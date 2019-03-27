import os
import sqlite3

sqlite_file = 'countries.db'    # name of the sqlite database file

# Connecting to the database file

if not os.path.exists(sqlite_file):
    with sqlite3.connect(sqlite_file) as conn:
        cursor = conn.cursor()

        # Creating a new SQLite table with 1 column
        with open('./countries.sql', 'r') as countries:
            queries = countries.read().split("\n")
            for query in queries:
                cursor.execute(query)
            # Committing changes and closing the connection to the database file
        with open('./countries-seed.sql', 'r') as countries:
            queries = countries.read().split("\n")
            for query in queries:
                cursor.execute(query)
            # Committing changes and closing the connection to the database file
        conn.commit()
    print("seed created!")
else:
    print("seed already exists")