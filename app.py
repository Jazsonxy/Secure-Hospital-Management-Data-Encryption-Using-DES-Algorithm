from flask import Flask, render_template, request, redirect, url_for, session, flash
import mysql.connector
import re

app = Flask(__name__)
app.secret_key = 'your_secret_key'

def bin2int(bin_str):
    return int(bin_str, 2)

def int2bin(integer, length):
    return bin(integer)[2:].zfill(length)

def permutate(block, table):
    return ''.join(block[i - 1] for i in table)

def rotate_left(block, n):
    return block[n:] + block[:n]

# Tabel-tabel DES
IP = [58, 50, 42, 34, 26, 18, 10, 2,
      60, 52, 44, 36, 28, 20, 12, 4,
      62, 54, 46, 38, 30, 22, 14, 6,
      64, 56, 48, 40, 32, 24, 16, 8,
      57, 49, 41, 33, 25, 17, 9, 1,
      59, 51, 43, 35, 27, 19, 11, 3,
      61, 53, 45, 37, 29, 21, 13, 5,
      63, 55, 47, 39, 31, 23, 15, 7]

IP_INV = [40, 8, 48, 16, 56, 24, 64, 32,
          39, 7, 47, 15, 55, 23, 63, 31,
          38, 6, 46, 14, 54, 22, 62, 30,
          37, 5, 45, 13, 53, 21, 61, 29,
          36, 4, 44, 12, 52, 20, 60, 28,
          35, 3, 43, 11, 51, 19, 59, 27,
          34, 2, 42, 10, 50, 18, 58, 26,
          33, 1, 41, 9, 49, 17, 57, 25]

PC1 = [57, 49, 41, 33, 25, 17, 9,
       1, 58, 50, 42, 34, 26, 18,
       10, 2, 59, 51, 43, 35, 27,
       19, 11, 3, 60, 52, 44, 36,
       63, 55, 47, 39, 31, 23, 15,
       7, 62, 54, 46, 38, 30, 22,
       14, 6, 61, 53, 45, 37, 29,
       21, 13, 5, 28, 20, 12, 4]

PC2 = [14, 17, 11, 24, 1, 5,
       3, 28, 15, 6, 21, 10,
       23, 19, 12, 4, 26, 8,
       16, 7, 27, 20, 13, 2,
       41, 52, 31, 37, 47, 55,
       30, 40, 51, 45, 33, 48,
       44, 49, 39, 56, 34, 53,
       46, 42, 50, 36, 29, 32]

SHIFT_LEFT = [1, 1, 2, 2, 2, 2, 2, 2,
              1, 2, 2, 2, 2, 2, 2, 1]

SBOX = [
    [[14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7],
     [0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8],
     [4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0],
     [15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13]],
    [[15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10],
     [3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5],
     [0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15],
     [13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9]],
    [[10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8],
     [13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1],
     [13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7],
     [1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12]],
    [[7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15],
     [13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9],
     [10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4],
     [3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14]],
    [[2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9],
     [14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6],
     [4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14],
     [11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3]],
    [[12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11],
     [10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8],
     [9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6],
     [4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13]],
    [[4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1],
     [13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6],
     [1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2],
     [6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12]],
    [[13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7],
     [1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2],
     [7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8],
     [2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11]]
]

E = [32, 1, 2, 3, 4, 5,
     4, 5, 6, 7, 8, 9,
     8, 9, 10, 11, 12, 13,
     12, 13, 14, 15, 16, 17,
     16, 17, 18, 19, 20, 21,
     20, 21, 22, 23, 24, 25,
     24, 25, 26, 27, 28, 29,
     28, 29, 30, 31, 32, 1]

P = [16, 7, 20, 21,
     29, 12, 28, 17,
     1, 15, 23, 26,
     5, 18, 31, 10,
     2, 8, 24, 14,
     32, 27, 3, 9,
     19, 13, 30, 6,
     22, 11, 4, 25]

def generate_subkeys(key):
    key = permutate(key, PC1)
    left, right = key[:28], key[28:]
    subkeys = []
    for shift in SHIFT_LEFT:
        left, right = rotate_left(left, shift), rotate_left(right, shift)
        subkeys.append(permutate(left + right, PC2))
    return subkeys

def substitute(expanded_half_block):
    output = ""
    for i in range(8):
        chunk = expanded_half_block[i*6:(i+1)*6]
        row = bin2int(chunk[0] + chunk[5])
        col = bin2int(chunk[1:5])
        output += int2bin(SBOX[i][row][col], 4)
    return output

def f_function(right, subkey):
    expanded = permutate(right, E)
    xored = int2bin(bin2int(expanded) ^ bin2int(subkey), 48)
    substituted = substitute(xored)
    return permutate(substituted, P)

def des_block_encrypt(block, subkeys):
    block = permutate(block, IP)
    left, right = block[:32], block[32:]
    for subkey in subkeys:
        left, right = right, int2bin(bin2int(left) ^ bin2int(f_function(right, subkey)), 32)
    encrypted_block = permutate(right + left, IP_INV)
    return encrypted_block

def des_block_decrypt(block, subkeys):
    return des_block_encrypt(block, subkeys[::-1])

def des_encrypt(data, key):
    subkeys = generate_subkeys(key)
    encrypted_data = ''.join(des_block_encrypt(data[i:i+64], subkeys) for i in range(0, len(data), 64))
    return encrypted_data

def des_decrypt(data, key):
    subkeys = generate_subkeys(key)
    decrypted_data = ''.join(des_block_decrypt(data[i:i+64], subkeys) for i in range(0, len(data), 64))
    return decrypted_data

def potong_kata(kata):
    if len(kata) % 8 != 0:
        kata = kata.ljust((len(kata) // 8 + 1) * 8)
    return [kata[i:i+8] for i in range(0, len(kata), 8)]

def gabungkan_kata(potongan):
    return ''.join(potongan).rstrip()

def process_plaintext(plaintext_list, key):
    encrypted_data = []
    decrypted_data = []
    for plaintext in plaintext_list:
        # Konversi teks ke heksadesimal
        hasil_hex = ''.join(hex(ord(c))[2:] for c in plaintext)
        data_bin = int2bin(int(hasil_hex, 16), 64)
        encrypted_data_bin = des_encrypt(data_bin, key)
        encrypted_data_hex = hex(bin2int(encrypted_data_bin))[2:].upper()
        decrypted_data_bin = des_decrypt(encrypted_data_bin, key)
        decrypted_data_hex = hex(bin2int(decrypted_data_bin))[2:].upper()
        encrypted_string = ''.join(chr(int(encrypted_data_hex[i:i+2], 16)) for i in range(0, len(encrypted_data_hex), 2))
        decrypted_string = ''.join(chr(int(decrypted_data_hex[i:i+2], 16)) for i in range(0, len(decrypted_data_hex), 2))
        encrypted_data.append(encrypted_string)
        decrypted_data.append(decrypted_string)
    return encrypted_data, decrypted_data

#############################################
# Fungsi pembantu untuk enkripsi/dekripsi field
#############################################
def get_key_bin(key_str):
    k_hex = ''.join(hex(ord(c))[2:] for c in key_str)
    return int2bin(int(k_hex, 16), 64)

def encrypt_field(text, key_bin):
    if not text:
        return text
    blocks = potong_kata(text)
    encrypted_data, _ = process_plaintext(blocks, key_bin)
    return gabungkan_kata(encrypted_data)

def decrypt_field(encrypted_text, key_bin):
    if not encrypted_text:
        return encrypted_text
    blocks = potong_kata(encrypted_text)
    _, decrypted_data = process_plaintext(blocks, key_bin)
    return gabungkan_kata(decrypted_data)

#############################################
# Koneksi Database MySQL (XAMPP)
#############################################
def get_db_connection():
    conn = mysql.connector.connect(
        host='localhost',
        user='root',
        password='',
        database='hospital_management'
    )
    return conn

#############################################
# Routes Flask
#############################################

# Halaman Utama: menampilkan data pasien, search, dan Contact Me
@app.route('/', methods=['GET', 'POST'])
def index():
    conn = get_db_connection()
    cur = conn.cursor(dictionary=True)
    
    # Proses Contact Me jika form disubmit
    contact_error = None
    if request.method == 'POST' and 'comment_submit' in request.form:
        name = request.form['name']
        email = request.form['email']
        message = request.form['message']
        if re.match(r"[^@]+@[^@]+\.[^@]+", email):
            sql = "INSERT INTO comments (name, email, message) VALUES (%s, %s, %s)"
            cur.execute(sql, (name, email, message))
            conn.commit()
        else:
            contact_error = "Invalid email format."
    
    # Ambil komentar terbaru
    cur.execute("SELECT * FROM comments ORDER BY created_at DESC")
    comments = cur.fetchall()
    
    # Ambil data pasien
    cur.execute("SELECT * FROM patients")
    patients = cur.fetchall()
    conn.close()
    
    # Gunakan kunci DES untuk enkripsi tampilan data pasien pada halaman utama
    key_str = "12345678"
    key_bin = get_key_bin(key_str)
    for patient in patients:
        patient['birth_date_encrypted'] = encrypt_field(patient['tanggal_lahir'], key_bin)
        patient['address_encrypted'] = encrypt_field(patient['alamat'], key_bin)
        patient['phone_encrypted'] = encrypt_field(patient['nomor_telepon'], key_bin)
        patient['diagnosis_encrypted'] = encrypt_field(patient['diagnosa'], key_bin)
        patient['symptoms_encrypted'] = encrypt_field(patient['gejala'], key_bin)
    
    return render_template("index.html", patients=patients, comments=comments, contact_error=contact_error)

# Halaman Login Admin
@app.route('/admin/login', methods=['GET', 'POST'])
def admin_login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        conn = get_db_connection()
        cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM admin WHERE username = %s", (username,))
        admin = cur.fetchone()
        conn.close()
        if admin and password == admin['password']:
            # Untuk demo, password tidak di-hash (gunakan password_hash di produksi)
            session['loggedin'] = True
            session['username'] = admin['username']
            return redirect(url_for('admin_dashboard'))
        else:
            flash("Invalid username or password", "danger")
    return render_template('admin_login.html')

# Halaman Dashboard Admin: menampilkan data pasien dengan dekripsi untuk kemudahan admin
@app.route('/admin/dashboard')
def admin_dashboard():
    if not session.get('loggedin'):
        return redirect(url_for('admin_login'))
    
    conn = get_db_connection()
    cur = conn.cursor(dictionary=True)
    cur.execute("SELECT * FROM patients")
    patients = cur.fetchall()
    conn.close()
    
    key_str = "12345678"
    key_bin = get_key_bin(key_str)
    for patient in patients:
        patient['birth_date_decrypted'] = decrypt_field(patient['tanggal_lahir'], key_bin)
        patient['address_decrypted'] = decrypt_field(patient['alamat'], key_bin)
        patient['phone_decrypted'] = decrypt_field(patient['nomor_telepon'], key_bin)
        patient['diagnosis_decrypted'] = decrypt_field(patient['diagnosa'], key_bin)
        patient['symptoms_decrypted'] = decrypt_field(patient['gejala'], key_bin)
    
    return render_template("admin_dashboard.html", patients=patients)

# Tambah Pasien Baru
@app.route('/admin/patients/add', methods=['GET', 'POST'])
def add_patient():
    if not session.get('loggedin'):
        return redirect(url_for('admin_login'))
    
    if request.method == 'POST':
        name = request.form['name']
        birth_date = request.form['birth_date']
        address = request.form['address']
        phone = request.form['phone']
        diagnosis = request.form['diagnosis']
        symptoms = request.form['symptoms']
        doctor = request.form['doctor']
        admission_date = request.form['admission_date']
        discharge_date = request.form['discharge_date']
        treatment_cost = request.form['treatment_cost']
        
        key_str = "12345678"
        key_bin = get_key_bin(key_str)
        # Enkripsi field yang diperlukan
        birth_date_enc = encrypt_field(birth_date, key_bin)
        address_enc = encrypt_field(address, key_bin)
        phone_enc = encrypt_field(phone, key_bin)
        diagnosis_enc = encrypt_field(diagnosis, key_bin)
        symptoms_enc = encrypt_field(symptoms, key_bin)
        
        conn = get_db_connection()
        cur = conn.cursor()
        sql = """INSERT INTO patients 
                 (nama_pasien, tanggal_lahir, alamat, nomor_telepon, diagnosa, gejala, dokter_penanggung_jawab, tanggal_masuk, tanggal_keluar, biaya_perawatan)
                 VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""
        cur.execute(sql, (name, birth_date_enc, address_enc, phone_enc, diagnosis_enc, symptoms_enc, doctor, admission_date, discharge_date, treatment_cost))
        conn.commit()
        conn.close()
        return redirect(url_for('admin_dashboard'))
    
    return render_template('add_patient.html')

# Edit Data Pasien
@app.route('/admin/patients/edit/<int:id>', methods=['GET', 'POST'])
def edit_patient(id):
    if not session.get('loggedin'):
        return redirect(url_for('admin_login'))
    
    conn = get_db_connection()
    cur = conn.cursor(dictionary=True)
    cur.execute("SELECT * FROM patients WHERE id=%s", (id,))
    patient = cur.fetchone()
    if not patient:
        conn.close()
        return "Patient not found", 404
    
    key_str = "12345678"
    key_bin = get_key_bin(key_str)
    # Dekripsi untuk ditampilkan dalam form edit
    patient['tanggal_lahir'] = decrypt_field(patient['tanggal_lahir'], key_bin)
    patient['alamat'] = decrypt_field(patient['alamat'], key_bin)
    patient['nomor_telepon'] = decrypt_field(patient['nomor_telepon'], key_bin)
    patient['diagnosa'] = decrypt_field(patient['diagnosa'], key_bin)
    patient['gejala'] = decrypt_field(patient['gejala'], key_bin)
    
    if request.method == 'POST':
        name = request.form['name']
        birth_date = request.form['birth_date']
        address = request.form['address']
        phone = request.form['phone']
        diagnosis = request.form['diagnosis']
        symptoms = request.form['symptoms']
        doctor = request.form['doctor']
        admission_date = request.form['admission_date']
        discharge_date = request.form['discharge_date']
        treatment_cost = request.form['treatment_cost']
        
        birth_date_enc = encrypt_field(birth_date, key_bin)
        address_enc = encrypt_field(address, key_bin)
        phone_enc = encrypt_field(phone, key_bin)
        diagnosis_enc = encrypt_field(diagnosis, key_bin)
        symptoms_enc = encrypt_field(symptoms, key_bin)
        
        sql = """UPDATE patients SET nama_pasien=%s, tanggal_lahir=%s, alamat=%s, nomor_telepon=%s, diagnosa=%s, gejala=%s, 
                 dokter_penanggung_jawab=%s, tanggal_masuk=%s, tanggal_keluar=%s, biaya_perawatan=%s WHERE id=%s"""
        cur.execute(sql, (name, birth_date_enc, address_enc, phone_enc, diagnosis_enc, symptoms_enc, doctor, admission_date, discharge_date, treatment_cost, id))
        conn.commit()
        conn.close()
        return redirect(url_for('admin_dashboard'))
    
    conn.close()
    return render_template('edit_patient.html', patient=patient)

# Hapus Data Pasien
@app.route('/admin/patients/delete/<int:id>', methods=['POST'])
def delete_patient(id):
    if not session.get('loggedin'):
        return redirect(url_for('admin_login'))
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM patients WHERE id=%s", (id,))
    conn.commit()
    conn.close()
    return redirect(url_for('admin_dashboard'))

# Logout Admin
@app.route('/admin/logout')
def admin_logout():
    session.pop('loggedin', None)
    session.pop('username', None)
    return redirect(url_for('admin_login'))

if __name__ == '__main__':
    app.run(debug=True)
