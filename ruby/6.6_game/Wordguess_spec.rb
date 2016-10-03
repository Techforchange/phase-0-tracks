require_relative 'wordguess'

describe Wordguess do
	let(:game) {Wordguess.new(word,guess)}

	it "checks if User 2's guess is in User 1's word"
		expect(check_word).to eq ("h_ _ _ _")
	end

end