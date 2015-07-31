def reverser
	words = yield.split(" ")
	rev_words = words.map do |word|
		num = word.length
		split_word = word.split(//)
		rev_word = []
		num.times do
			rev_word << split_word.pop
		end
		rev_word.join
	end
	rev_words.join(" ")
end


def adder(num = 1)
	yield + num
end


def repeater(num = 1)
	num.times do
		yield
	end
end

