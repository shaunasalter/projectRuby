def translate(string)
	words = string.split
	count = 0
	vowels = ['a', 'e', 'i', 'o', 'u']
	pig_words = words.map do |word|
		if vowels.include?(word[0])
			word + 'ay'
		elsif vowels.include?(word[1]) && word[0] != 'q'
			word[1..-1] + word[0] + 'ay'
		elsif vowels.include?(word[2]) && word[1] != 'q'
			word[2..-1] + word[0..1] + 'ay'
		elsif vowels.include?(word[3]) && word[2] != 'q'
			word[3..-1] + word[0..2] + 'ay'
		end
	end
	pig_words.join(" ")
end