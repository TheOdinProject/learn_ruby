class Timer
	attr_accessor :seconds, :time_string
	def initialize
	  	@seconds = 0
	end
	def time_string
		h = 0
		m = 0
		seconds = @seconds
		while (seconds >= 60)
			seconds -= 60
			m += 1
		end
		while(m>=60)
			m -= 60
			h += 1
		end
		h = "%02d" %h
		m = "%02d" %m
		seconds = "%02d" %seconds
		"#{h}:#{m}:#{seconds}"
	end
end
