

array =[]
#Write a method that takes a spy's name
#swapping the first and last name
def change_name(fullname)
		new_name = fullname.split
		swap_name = "#{new_name[1]} #{new_name[0]}"
		swap_name.reverse
end



loop  do 
	puts "What is your spy name? Type in quit to exit"
	name = gets.chomp.downcase
	if name != "quit"
		p change_name(name)
		array.push(change_name(name))
	else
		break
	end

end

array.each do |iterate|

    puts iterate

end