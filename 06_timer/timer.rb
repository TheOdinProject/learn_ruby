class Timer
	attr_reader :seconds
	attr_reader :time_string
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
		(hour.to_s.rjust(2, "0")) + ":" + (minutes.to_s.rjust(2, "0")) + ":" + (seconds.to_s.rjust(2, "0"))
	end
end
