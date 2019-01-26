class Timer

  attr_accessor :seconds
  
  def initialize
  @seconds  = 0
  end
  
  def seconds
    @seconds 
  end

  def time_string
    hours = '%02d' % (@seconds / 3600)
    remaining_minute_seconds = @seconds % 3600
    minutes = '%02d' % (remaining_minute_seconds / 60)
    seconds_remaining = '%02d' % (remaining_minute_seconds % 60)
    @time_string = "#{hours}:#{minutes}:#{seconds_remaining}"
  end
end
