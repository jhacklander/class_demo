import mariadb
from tabulate import tabulate
from dotenv import dotenv_values
from sys import exit

conn_parm = dotenv_values(".env")
# for k, v in conn_parm.items():
#     print(f'Key: {k} Value: {v}')
conn = mariadb.connect(**conn_parm)
with conn.cursor() as tables:
    data = ("Research and Development", "Research new product")
    tb1 = "tb_dept"
    col = "dept_name, dept_description"
    SQL = f'''INSERT INTO {tb1} ({col}) VALUE (?, ?);'''
    print(SQL)
    try:
        tables.execute(SQL, data=data)
    except mariadb.Error as e:
        print(f'Error: {e}')
        exit(1)
    SQL = '''SELECT * FROM vw_Active_Depts'''
    print(tabulate(tables, headers=['Active_Depts'], tablefmt = 'fancy_grid'))
conn.close()