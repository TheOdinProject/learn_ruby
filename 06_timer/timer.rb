class Timer
  #write your code here
  def initialize
    @seconds = 0
  end
  def seconds= seconds
    @seconds = seconds
  end
  def seconds
    return @seconds
  end
  def time_string
    minutes = 0
    seconds = @seconds
    if seconds > 59
      minutes = seconds / 60
      seconds = seconds % 60
    end
    hours = 0
    if minutes > 59
      hours = minutes / 60
      minutes = minutes % 60
    end
    time_string = "%02d:%02d:%02d" % [hours, minutes, seconds]
  end
end
