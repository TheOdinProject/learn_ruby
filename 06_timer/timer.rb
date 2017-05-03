class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	def time_string
		if @seconds == 0
			timer = '00:00:00'
		else
			hours = (@seconds/3600).to_s
			minutes = ((@seconds%3600)/60).to_s
			seconds = ((@seconds%3600)%60).to_s

			timer = sprintf('%02d', hours) + ':' + sprintf('%02d', minutes) + ':' + sprintf('%02d', seconds)
		end
	end
end
