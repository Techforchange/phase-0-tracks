#create a class named word_guess
class Wordguess
	attr_reader :guess_count, :is_over, :word, :guess, :arr

#attributes: guess_count, is_over, word
	def initialize(word,guess)
		@word = word.split(//)
		@guess = guess.to_str
		@guess_count = word.length
		@is_over = false
		@arr = arr
	end

	def check_word(guess)
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
	
	def is_over
		if arr == word
			p "You won!!! Congrats!"
		else
			p "Really? It wasn't THAT hard. You should be ashamed lol Joking!"
		end
	end
			
end




#driver code details: user focused; There are 2 users
#input: user1 gives word 
#input: user 2 guesses word of user1

puts "Welcome to the Guess Word Game! There will be two Users for this game. User 1, you're up first! Type in your 'secret' word:"
word = gets.chomp.to_str

# p "#{game.user1_word}"

# game.check_word(user1_word)
guess_count = 0
while guess_count < word.length
		puts "User 2, you're up! Guess User 1's word by typing in one letter."
		guess = gets.chomp.to_str
		game = Wordguess.new(word,guess)
		game.check_word(guess)
		guess_count += 1
end
game.is_over

	








	
	







