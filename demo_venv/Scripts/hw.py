import sqlite3
from faker import Faker

# Initialize Faker
fake = Faker()

# Create an in-memory SQLite database
conn = sqlite3.connect(':memory:')
cursor = conn.cursor()

# Create the users table
cursor.execute('''
CREATE TABLE users (
    userid INTEGER PRIMARY KEY,
    user_name TEXT NOT NULL,
    active BOOLEAN NOT NULL
)
''')

# Insert random data into the users table
for _ in range(10):  # You can adjust the range for more entries
    user_name = fake.first_name()
    active = fake.boolean()
    cursor.execute('''
    INSERT INTO users (user_name, active)
    VALUES (?, ?)
    ''', (user_name, active))

# Commit the changes
conn.commit()

# Query the table to verify the entries
cursor.execute('SELECT * FROM users')
rows = cursor.fetchall()

# Print the entries
for row in rows:
    print(row)

# Close the connection
conn.close()
