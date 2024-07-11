#import librarires
import sqlite3 as sq
from faker import Faker
from tabulate import tabulate

DATABASE_NAME = ':memory:'
TABLE_NAME = 'tb_employees'
TABLE_COL_ID = 'emp_id_pk'
TABLE_COL_NAME = 'emp_name'
MAX_EMPLOYEES = 10

with sq.connect(DATABASE_NAME) as conn:
    SQL = F'''CREATE TABLE IS NOT EXISTS {TABLE_NAME}
    (
            {TABLE_COL_ID} INTEGER PRIMARY KEY
            {TABLE_COL_NAME} TEXT NOT NULL UNIQUE
    );'''
