import sqlite3
from faker import Faker
from tabulate import tabulate

# Initialize Faker
fake = Faker()

# Connect to an in-memory SQLite database
conn = sqlite3.connect(':memory:')
cursor = conn.cursor()

# Create a users table
cursor.execute('''
    CREATE TABLE users (
        userid INTEGER PRIMARY KEY,
        user_name TEXT NOT NULL,
        active INTEGER NOT NULL
    )
''')

# Insert random data into the users table
for _ in range(10):  # change the number of users as needed
    user_name = fake.first_name()
    active = fake.boolean(chance_of_getting_true=50)
    cursor.execute('''
        INSERT INTO users (user_name, active)
        VALUES (?, ?)
    ''', (user_name, active))

# Commit the transaction
conn.commit()

# Fetch and display the data
cursor.execute('SELECT * FROM users')
rows = cursor.fetchall()

# Display the data in a table format using tabulate
print(tabulate(rows, headers=['userid', 'user_name', 'active']))

# Close the connection
conn.close()
