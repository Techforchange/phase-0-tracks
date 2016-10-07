
puts "How many employees will be processed?"
employees = gets.chomp.to_i

until employees == 0 
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?" 
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i


	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	garlic_bread = gets.chomp
	
	puts "Would you like to enroll in the company’s health insurance? (yes/no)"
	insurance = gets.chomp
	
	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
		
	elsif age != 2016 - year && ( garlic_bread == "no" && insurance == "no")
		puts "Almost certainly a vampire."
		
	elsif age == 2016 - year && (garlic_bread == "yes" || insurance == "yes")
		puts "Probably not a vampire."
		
	elsif age != 2016 - year && ( garlic_bread == "no" || insurance == "no")
		puts "Probably not a vampire."
	else 
		puts "Results inconclusive."
	end
	
	puts "Based on your application, your name is #{name} and you are #{age}, born in #{year}.  When asked if you would like garlic bread you said #{garlic_bread}. When asked if you would like insurance, you said #{insurance}. "
	
	employees -=1;
end


puts "Type in any allergies you may have separately. If you do not have any or are finished, type in (done)."
allergies = ""

until allergies == "done"
	allergies = gets.chomp
	
	if allergies == "sunshine"
		puts "Probably a vampire."
		
	else 
	puts " Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
		puts "Ahhh, much better."
		

 	end
 end
	














	

