import psycopg2
import getpass

conn = psycopg2.connect("user=dmusicant dbname=dmusicant")

cur = conn.cursor()

name = input('Which recipe? ')

query = """SELECT *
             FROM recipes
            WHERE name= %(name)s"""


print(query)
cur.execute(query, {"name":name})
for row in cur:
    print(row)
