class Book
	attr_accessor :title
	def title
		words = @title.split
		little_words = ['and', 'in', 'the', 'of', 'a', 'an']
		cap_words = words.map do |word|
			if little_words.include?(word)
				word
			else
				word.capitalize
			end
		end
		cap_words[0].capitalize!
		return cap_words.join(" ")
	end
end