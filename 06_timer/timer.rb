class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds=0
  end

  def time_string
    sec=@seconds

    hour=sec/3600
    min=(sec%3600)/60
    sec=sec%60

    hour = "%02d" %hour
    min = "%02d" %min
    sec = "%02d" %sec

    time = hour.to_s + ":" + min.to_s + ":" + sec.to_s

    return time.to_s
  end
end
