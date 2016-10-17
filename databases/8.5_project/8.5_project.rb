

require 'sqlite3'

#create SQlite3 database
db = SQlite3::Database.new("_____.db")
#To view input:
db.execute("SELECT * FROM kittens")

#delimiters
create_table = <<-SQL
	CREATE TABLE ______ (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INT)
SQL
