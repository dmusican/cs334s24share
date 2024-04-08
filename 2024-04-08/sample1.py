import psycopg2

conn = psycopg2.connect("user=csuser dbname=csuser")

cur = conn.cursor()

desired_name = input('Which recipe? ')

# The bad way
query = "SELECT * FROM recipes WHERE name =" + desired_name
print(query)

# query = """SELECT *
#              FROM recipes
#             WHERE name='"""  + name + "'"

# #print(query)-
# cur.execute(query)
# for row in cur:
#     print(row)
               
