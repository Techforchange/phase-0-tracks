class Santa
	attr_reader :gender
	attr_accessor :age, :ethnicity,  
	#A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
#An eat_milk_and_cookies method that takes a cookie type 
#(example: "snickerdoodle") as a parameter and prints 
#{}"That was a good <type of cookie here>!"
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
#An initialize method that prints 
#{}"Initializing Santa instance ...".
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	# def about
	# puts "This santa is #{@gender} and of #{@ethnicity}!"
	# end

	#celebrate_birthday should age Santa by one year
	def celebrate_birthday (age)
		@age = age + 1
		p @age
	end

	#get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. 
	def get_mad_at(reindeer_name)
		index = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
	end
	
	#create a setter method where gender can be accessed outside class
	
end

#Make an empty array
#Make an example array of genders and ethnicities
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "Asian", "Mixed", "N/A"]

# Make a loop that adds each santa to the santas array
genders.length.times do |item|
  santas << Santa.new(genders[item], ethnicities[item])
end

###Testing program
# santas = Santa.new("female", "hispanic")
# santas.get_mad_at("Rudolph")
# santas.age = 3
# puts "#{santas.age}"
# santas.ethnicity = "all of the above"
# puts "All santas will not have a race, they will be #{santas.ethnicity}!"

i = 0

#set age = random age between 1 and 140
age = Random.new
age.rand(1...140)
puts "Your Santa is a {#{}"

@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

