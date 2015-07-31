def measure(num = 1)
	array_of_times = []
	num.times do
		start_time = Time.now
		yield
		diff = Time.now - start_time
		array_of_times << diff
	end
	array_of_times.inject(0) {|sum, num| sum += num} / num
end