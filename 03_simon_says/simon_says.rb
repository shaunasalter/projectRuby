def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 2)
	([string] * num).join(" ")
end

def start_of_word(string, num)
	string[0..num-1]
end

def first_word(string)
	string.split(" ").first
end

def titleize(string)
	words = string.split(" ")
	little_words = ["and", "over", "the"]
	cap = words.map do |word|
		if little_words.include?(word)
			word
		else
			word.capitalize
		end
	end
	cap[0].capitalize!
	cap.join(" ")
end