import mysql.connector

def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",  # Ganti dengan username MySQL lo
        password="",  # Ganti dengan password MySQL lo
        database="hospital_management"
    )
