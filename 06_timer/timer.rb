class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def seconds=(time_input)
  	@seconds = time_input
  end

  def seconds
  	@seconds
  end

  def time_string
  	if @seconds == 0
  		return "00:00:00"
  	end
  	hours = @seconds/3600
  	seconds_left = @seconds - hours*3600
  	mins = seconds_left/60
  	seconds_left = seconds_left - mins*60

  	if hours > 9
  		hours = hours.to_s
  	else
  		hours = "0"+hours.to_s
  	end

  	if mins > 9
  		mins = mins.to_s
  	else
  		mins = "0"+mins.to_s
  	end

  	if seconds_left > 9
  		seconds = seconds_left.to_s
  	else
  		seconds = "0"+seconds_left.to_s
  	end

  	return hours+":"+mins+":"+seconds
  end
end
