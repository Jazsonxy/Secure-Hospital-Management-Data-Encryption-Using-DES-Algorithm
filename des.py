from Crypto.Cipher import DES
import base64

KEY = b'8bytekey'  # Kunci harus 8 byte

def pad(text):
    while len(text) % 8 != 0:
        text += ' '  # Padding ke 8 byte
    return text

def encrypt(text):
    des = DES.new(KEY, DES.MODE_ECB)
    padded_text = pad(text)
    encrypted_text = des.encrypt(padded_text.encode())
    return base64.b64encode(encrypted_text).decode()

def decrypt(enc_text):
    des = DES.new(KEY, DES.MODE_ECB)
    decrypted_text = des.decrypt(base64.b64decode(enc_text)).decode().strip()
    return decrypted_text
