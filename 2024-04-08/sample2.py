import psycopg2
import getpass

conn = psycopg2.connect("user=csuser dbname=csuser")

cur = conn.cursor()

desired_name = input('Which recipe? ')

# Prepared statement
# query = "SELECT * FROM recipes WHERE name = '" + \
#          desired_name + "'"
query = "SELECT * FROM recipes WHERE name = %(desired_name)s"


print(query)
cur.execute(query, {"desired_name":desired_name})
for row in cur:
    print(row)
