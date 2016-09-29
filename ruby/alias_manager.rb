

#Write a method that takes a spy's name
#swapping the first and last name
puts "What is your spy name? Type in quit to exit"
	name = gets.chomp.downcase
def change_name 
	new_name = name.split
	swap_name = "#{new_name[1]} #{new_name[0]}"
	p swap_name.reverse

end

change_name

loop  do 
	if name == "quit"
		break
	else
		change_name	
end