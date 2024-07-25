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

# Create a view for active users
cursor.execute('''
CREATE VIEW active_users AS
SELECT * FROM users WHERE active = 1
''')

# Retrieve and display the active users from the view
cursor.execute('SELECT * FROM active_users')
active_rows = cursor.fetchall()
headers = [description[0] for description in cursor.description]

# Display the table using tabulate
print("Active Users:")
print(tabulate(active_rows, headers, tablefmt='grid'))

# Close the connection
conn.close()
