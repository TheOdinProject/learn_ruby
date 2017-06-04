class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
    hour = seconds/3600
    rem = seconds%3600
    sprintf("%02d:%02d:%02d", hour, rem/60, rem%60)

  end
end