puts "What is your hamster's name?"
name = gets.chomp

puts "How loud is your hamster from 1 to 10?"
volume = gets.chomp
puts volume.to_f

puts "What color fur is your hamster's?"
color_fur = gets.chomp

puts "Is the hamster a good candidate for adoption (is/is not)?"
adoption = gets.chomp

puts "Approximately, how old is your hamster?"
age = gets.chomp
age = nil

puts "Here is your hamster's information. His/her name is #{name}. On a scale from 1 to 10, #{name} is a #{volume}. #{name} is #{color_fur} and #{adoption} a good candidate for adoption. #{name} is approximately #{age} years old! Excited to meet #{name}!!!"