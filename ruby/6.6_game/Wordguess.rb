#create a class named word_guess
class Wordguess
	attr_reader :guess_count, :is_over, :word, :guess

#attributes: guess_count, is_over, word
	def initialize(word,guess)
		@word = word.split(//)
		@guess = guess.to_str
		@guess_count = 0
		@is_over = false
	end

	def check_word
		arr = []
		arr.length == word.length
		arr = word.map do |letter|
			if  letter == guess
				guess
  			else
    			' _ '
  			end
		end
		p arr.join
		
	end
end


#guesses are limited but repeated guesses are allowed
#The number of guesses = length of the word
# return: string such as "_ _ _" or "_ a _" if user2 guesses "a" and the word is "cat"
#at the end: print a congratulatory message if they win or taunting message if they lose


#driver code details: user focused; There are 2 users
#input: user1 gives word 
#input: user 2 guesses word of user1

puts "Welcome to the Guess Word Game! There will be two Users for this game. User 1, you're up first!"



puts "User 1: Type in your word"
word = gets.chomp.to_str

puts "User 2, you're up! Guess User 1's word by typing in one letter."
guess = gets.chomp.to_str

game = Wordguess.new(word,guess)
game.check_word()

# p "#{game.user1_word}"

# game.check_word(user1_word)




















