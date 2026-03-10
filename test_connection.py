import psycopg2

try:
    connection = psycopg2.connect(
        host="localhost",
        database="emission_db",
        user="postgres",
        password="Avni@2019",
        port="5432"
    )
    cursor = connection.cursor()
    cursor.execute("SELECT version();")
    db_version = cursor.fetchone()
    print("Connected to PostgreSQL!")
    print("postgreSQL version:", db_version)
    cursor.close()
    connection.close()

except Exception as error:
    print("Error connecting to database:", error)