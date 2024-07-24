import sqlite3
from faker import Faker
from tabulate import tabulate

# Initialize Faker
fake = Faker()

# Create an in-memory SQLite database
conn = sqlite3.connect(':memory:')
cursor = conn.cursor()

# Create the users table
cursor.execute('''
CREATE TABLE users (
    userid INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT NOT NULL,
    active BOOLEAN NOT NULL
)
''')

# Populate the database with random first names
for _ in range(10):
    cursor.execute('''
    INSERT INTO users (user_name, active)
    VALUES (?, ?)
    ''', (fake.first_name(), fake.boolean()))

# Commit the changes
conn.commit()

# Retrieve and display the data
cursor.execute('SELECT * FROM users')
rows = cursor.fetchall()
headers = [description[0] for description in cursor.description]

# Display the table using tabulate
print(tabulate(rows, headers, tablefmt='grid'))

# Close the connection
conn.close()

