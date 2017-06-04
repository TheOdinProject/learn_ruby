class Timer
  #write your code here
  	#make a get and set method for seconds
 	attr_accessor :seconds

 	def initialize
 	#initializes seconds to zero if no method is called
 		@seconds = 0
 	end

 	def time_string
 	# get the hour minutes and seconds
 		hour = @seconds / 3600
 		time_left = @seconds % 3600
 		minutes = time_left / 60
 		time_left = time_left % 60
 		seconds = time_left

 	#long way to implemenet
 	#	hour = hour.to_s
 	#	minutes = minutes.to_s
 	#	seconds = seconds.to_s
 		
 	#	if(hour.length == 1)
 	#		hour_string = '0'+hour 
 	#	else
 	#		hour_string = hour
 	#	end

 	#	if(minutes.length == 1)
 	#		minute_string = '0' + minutes
 	#	else
 	#		minute_string = minutes
 	#	end

 	#	if(seconds.length == 1)
 	#		second_string = '0' + seconds
 	#	else
 	#		second_string = seconds
 	#	end

 	#	hour_string = padded(hour)
 	#	minute_string = padded(minutes)
 	#	second_string = padded(seconds)

 		result = padded(hour) + ':' + padded(minutes) + ':' + padded(seconds)
 	end

 	def padded(num)
 		num = num.to_s
 		padding = '0'

 		if(num.length == 1)
 			result = padding + num 
 		else
 			result = num
 		end

 		result
 	end
end



