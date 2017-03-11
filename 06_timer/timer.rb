class Timer
	def initialize
		@seconds = 0
	end

	def seconds=(num)
		@seconds = num
	end

	def seconds
		@seconds
	end

	def time_string
		hour = @seconds/3600
		minutes = (@seconds % 3600) / 60
		seconds = @seconds % 60
		padded(hour)+ ":" + padded(minutes) + ":" + padded(seconds)
	end

	def padded(num)
		num < 10 ? "0" + num.to_s: num.to_s		
	end

end