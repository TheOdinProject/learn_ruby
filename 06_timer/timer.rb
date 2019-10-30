class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    # calculate hours (3600 seconds in one hour)
    hours = @seconds/3600
    # calculate remainder (seconds mod hours)
    rem = @seconds%3600
    # minutes = remainder/60, seconds = remainder mod 60
    sprintf("%02d:%02d:%02d", hours, rem/60, rem%60)
  end
end
