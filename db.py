import MySQLdb

def get_db_connection():
    return MySQLdb.connect(
        host="localhost",
        user="root",
        password="",
        database="hospital_management",
        charset="utf8"
    )
