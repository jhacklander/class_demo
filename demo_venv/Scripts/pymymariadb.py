import pymysql
from dotenv import load_dotenv
from os import environ

load_dotenv(".env")
HOST = environ["host"]
USER = environ["user"]
PASSWORD = environ["password"]
DATABASE = environ["database"]

conn = pymysql.connect(host=HOST,
                       user=USER,
                       password=PASSWORD,
                       database=DATABASE)
with conn:
    with conn.cursor() as curr:
        SQL = '''SHOW TABLES'''
        curr.execute(SQL)
        tables = curr.fetchall()
        for table in tables:
            print(f'{tables}')