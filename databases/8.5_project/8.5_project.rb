

require 'sqlite3'


##USER INTERFACE
puts "Welcome to Math World, where you will learn Math in your OWN way! First, let's create your account! "
puts "What is your first name?"
first_name = gets.chomp.capitalize

puts "What is your last name?"
last_name = gets.chomp.capitalize

puts "What is your email address?"
email = gets.chomp.downcase

puts "What is your birth date?(MMDDYYYY)"
birth_date = gets.chomp.to_i

#####password = Faker::Name.name


puts "For now, keep the following information"
puts "Login: #{email}"
#####puts "Password:  "

#create SQlite3 database
student_info = SQlite3::Database.new("Student_Info.db")

##Create table with account information
create_account_table = <<-SQL
	CREATE TABLE IF NOT EXISTS account_info(
	id INTEGER PRIMARY KEY,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	Email VARCHAR(255),
	Birthdate INT,
	Password VARCHAR(255)
	)
SQL

##Store data into account info table
def create_account_info_table (student_info,first_name, last_name, Email, Birthdate, Faker::Name.name)
	student_info.execute("INSERT INTO account_info(FirstName, LastName, Email, Birthdate, Password) VALUES (?,?,?,?,?)",
		[FirstName, LastName, Email, Birthdate,Faker::Name.name])
end

#Print the table for user to see what's stored
def print_account_table (student_info)
	student_info.execute("SELECT * FROM account_info")
end


##User interaction with Mathworld. Create a table that displays date, skill, score before using Math World, score after using
#Math World, and the user's reflection

puts "#{first_name}, you are on your way to becoming the true MATHEMATICIAN you were born to be! We believe in you! You got this!"

puts "For now, let's see what you're good at and what we need to improve on:"

puts "Tell me the one subject/skill you like in Math!(Ex. Algebra)"
fave_subject = gets.chomp.upcase

puts "How would you rate yourself on #{fave_subject} on a 1- 5 scale?(1-lowest, 5-highest)"
score_fave_subject = gets.chomp.to_i

puts "Great! See, you're a true MATHEMATICIAN already! Now, what is one subject/skill you need to improve on?"
improve_subject = gets.chomp.upcase

puts "And how would you rate yourself on #{improve_subject} on a 1- 5 scale?(1-lowest, 5-highest)"
score_improve_subject = gets.chomp.to_i

puts "Great! We'll help you with that. Just watch, with practice and Math World, you will go from feeling that you're a #{score_improve_subject} on #{improve_subject} to mastering it with a 5!"


puts "Let's get started! Let's fill out our entry table. Each time you log in, you will be asked several questions 
about a subject/skill and how you felt about it. It's important to remind myself of how much you've improved!"

puts "What is today's date?(MMDDYYYY)"
date = gets.chomp.to_i

puts "What skill will you be working on today?"
skill_working_on = gets.chomp.upcase

puts "How would you rate yourself on #{skill_working_on} on a 1- 5 scale?(1-lowest, 5-highest)"
score_skill_before = gets.chomp.to_i

#Assume that user completed a lesson with videos and passed on Math World
puts "How would you rate yourself AFTER using Math WORLD on #{skill_working_on} on a 1- 5 scale?(1-lowest, 5-highest)"
score_skill_after = gets.chomp.to_i

if score_skill_after > score_skill_before
	puts "Soooo proud of you! You went from a #{score_skill_before} to a #{score_skill_after}! That is amazing! Keep up the good work!"
elsif 
	puts "It's ok! We'll work TOGETHER more to make sure you're on your way to mastering #{skill_working_on}! We believe in you!"
end

puts "Reflection is key! What do you believe led to your success? If you did not improve, it's ok! What do you want to do better in next time?"
reflection = gets.chomp	

#Create SQlite3 Database for skills history
skills = SQlite3::Database.new("Skills.db")
#Create a table to document the user's skill history
create_skills_table = <<-SQL
	CREATE TABLE IF NOT EXISTS skills_history(
	id INTEGER PRIMARY KEY,
	DATE INT,
	Skill VARCHAR(255),
	Before INT,
	After INT,
	Reflection VARCHAR(255)
	)
SQL

##Store skills history into skills table
def create_skills_history_table (skills, date, skill_working_on, score_skill_before, score_skill_after, reflection)
	skills.execute("INSERT INTO skills_history(FirstName, LastName, Email, Birthdate, Password) VALUES (?,?,?,?,?)",
		[FirstName, LastName, Email, Birthdate,Faker::Name.name])
end

#Print the table for user to see what's stored
def print_account_table (student_info)
	student_info.execute("SELECT * FROM account_info")
end

#create SQlite3 database
db = SQlite3::Database.new("Student_Profile.db")
#Call instance as a hash
#db.results_as_hash = true
#To view input:
db.execute("SELECT * FROM kittens")



#delimiters


#Call table
db.execute(create_skills_table)

#Add a test
def new_skill (Date, Skill, Before, After, Reflection)
	db.execute("INSERT INTO student_profile (Date, Skill, Before, After, Reflection) VALUES (?,?,?,?,?)",
		[Date, Skill, Before, After, Reflection])
end




#Retrieve data
Soulmates = db.execute("SELECT * FROM soulmates")
#puts soulmates.class
#p soulmates
#Make info more user friendly
soulmates.each do |soulmate|
	puts "#{soulmate['name']} is #{soulmate['age']}"
end

#Create multiple users
def create_   (db, name, age)
	db.execute("INSERT INTO _____(name,age) VALUES (?.?)",[name,age])
end


8.times do 
	create____(db, Faker::Name.name ,0)
end






























