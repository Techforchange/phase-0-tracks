#Write a program that stores client's info
#Prompt the designer/user for all of this information
client_info = {}

#Store client's first name
puts "What is your first name?"
client_info [:first_name]= gets.chomp.capitalize

#Store client's last name
puts "What is your last name?"
client_info [ :last_name] = gets.chomp.capitalize

#Store client's age
puts "What is your age?"
client_info [:age] = gets.chomp.to_i

#store client's number of children
puts "How many children do you have? (Type in 0 if you have none)"
client_info [:num_children]= gets.chomp.to_i

#store decor theme
puts "State what you would like your decor theme to be"
client_info[:decor_theme]= gets.chomp.to_str

#Give the user the opportunity to update a key 
puts "Do you want to update an answer(type in NONE if no updates)?"
input = gets.chomp.upcase

	if input == "NONE"
		p client_info
  		else
  			puts "What would you like to update?"
  			update_key = gets.chomp.to_sym
  		
  			puts "What is its new value?"
  			update_value = gets.chomp.intern
  		
  			if update_key == :first_name
  				client_info[:first_name] = update_value
  			
  		
  			elsif update_key == :last_name
  				client_info[:last_name] = update_value
  				
  				
  			elsif update_key == :age
  				client_info[:age] = update_value
  			
  				
  			elsif update_key == :num_children
  				client_info[:num_children] = update_value
  			
  		
  			elsif update_key == :decor_theme
  				client_info[:decor_theme] = update_value
  				
  			end
  	p client_info
  	end
	


		