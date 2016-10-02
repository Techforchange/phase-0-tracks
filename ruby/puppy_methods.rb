class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  #add a speak method
  def speak(int)
  	int.times do |x|
  	p "Woof!"
  	end
  end

  #Add a roll_over method
  def roll_over
  	p "*rolls over*"
  end

  #Add a dogs years method
  def dog_years(age)
  	human_year = age * 7
  	p human_year.to_i
  end

  #Add new trick: tell a dog to sit
  def sit
  	p "Ok, I'll sit down! haha"
  end

  def initialize
  	p "Initializing new puppy instance..."
  end

end

# Terrier = Puppy.new
# puts Terrier.fetch("ball")
# Terrier.speak(10)
# Terrier.roll_over



class Instrument

	def sound(int)
		int.times do |x|
		p "note C!"
		end	
	end

	def type(str)
		if str == "Clarinet"
			p "woodwind"
		else 
			p "guitar"
		end 
	end 

end 



# Guitar = Instrument.new
# Clarinet = Instrument.new
# Guitar.sound(5)
# puts Guitar.type("the")
# puts Clarinet.type("Clarinet")


store = []

50.times do |x|
	#create an instance(example)
	new_instrument = Instrument.new
	store.push(new_instrument)
end

store.each do |item|
	item.type("Clarinet")
	item.sound(5)
end








