class Timer
	attr_accessor :seconds
	attr_writer :num

	@@divisors = [3600, 60, 1]
	
	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string
		time_arr = [0, 0, 0]
		@@divisors.each_with_index do |divisor, index|
			while @seconds/divisor >= 1
				time_arr[index] += 1
				@seconds = @seconds - divisor
			end
			padded(time_arr[index])
			time_arr[index] = @num
		end			
		time_arr.join(":")
	end

	def padded(num) 
		if num < 10
			@num = "0" + num.to_s
		else
			@num = num.to_s
		end
	end
end

# timer = Timer.new
# timer.seconds = 6397
# puts timer.time_string
# puts timer.padded(11)


