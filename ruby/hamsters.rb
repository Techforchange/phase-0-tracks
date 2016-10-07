puts "What is your hamster's name?"
name = gets.chomp.capitalize!

puts "How loud is your hamster from 1 to 10(Answer as an integer)?"
volume = gets.chomp.to_i


puts "What color fur is your hamster's?"
color_fur = gets.chomp

puts "Is the hamster a good candidate for adoption (is/is not)?"
adoption = gets.chomp

puts "Approximately, how old is your hamster (type in n/a if unsure)?"

age = gets.chomp.to_i
if age = "n/a"
	age = nil
 else
   age
 end

puts "Here is your hamster's information. His/her name is #{name}. On a scale from 1 to 10, #{name} is a #{volume}. #{name} is #{color_fur} and #{adoption} a good candidate for adoption. Excited to meet #{name}!!!"
