require_relative 'wordguess'

describe Wordguess do
	let(:game) {Wordguess.new(word,guess)}

	it "checks if User 2's guess is in User 1's word"
		expect(game.check_word).to eq ("h_ _ _ _")
	end

	it "checks if player guessed the whole word"
		expect(game.is_over). to eq ("Yes!")
	end
end