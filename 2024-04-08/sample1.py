import psycopg2
import getpass

conn = psycopg2.connect("user=csuser dbname=csuser")

cur = conn.cursor()

name = input('Which recipe? ')
query = """SELECT *
             FROM recipes
            WHERE name='"""  + name + "'"

print(query)
cur.execute(query)
for row in cur:
    print(row)
               
