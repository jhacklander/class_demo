import mariadb
from tabulate import tabulate
from dotenv import dotenv_values

conn_parm = dotenv_values(".env")
# for k, v in conn_parm.items():
#     print(f'Key: {k} Value: {v}')
conn = mariadb.connect(**conn_parm)
with conn.cursor() as tables:
    SQL = '''SHOW DATABASES;'''
    tables.execute(SQL)
    print(tabulate(tables, headers=['DATABASES'], tablefmt = 'fancy_grid'))