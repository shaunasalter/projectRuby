def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(numbers)
	if numbers == []
		return 0
	end
	numbers.inject(:+)
end
