class Timer
  attr_accessor :seconds
  def initialize
	@seconds = 0
  end
  def time_string
	@hours = @seconds / 3600
	@minutes = (@seconds - (@hours * 3600)) / 60
	@remain = @seconds - (@hours * 3600) - (@minutes * 60)
	@hours = padded @hours
	@minutes = padded @minutes
	@remain = padded @remain
	return_string = "#{@hours}:#{@minutes}:#{@remain}"
  end
  def padded x
	if x < 10
	  x = "0" + x.to_s
	else
	  x = x.to_s
	end
  end
end
#@timer = Timer.new #for testing
#@timer.seconds = 3773
#@timer.time_string

