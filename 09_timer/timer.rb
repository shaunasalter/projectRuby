class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def padded(num)
		if num.to_s.length == 1
			return "0" + num.to_s
		elsif num.to_s.length == 2
			return num.to_s
		end
	end

	def time_string
		hours = @seconds / 3600
		leftover = @seconds % 3600
		minutes = leftover / 60
		seconds = leftover % 60
		padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
	end
end