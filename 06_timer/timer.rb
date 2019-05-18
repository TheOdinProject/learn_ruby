class Timer

  attr_accessor :seconds
  attr_reader :time_string

  def initialize()
    @seconds = 0
    @time_string = "00:00:00"
  end

  def time_string()
    @time_string = get_time_as_string()
  end

  def get_time_as_string()
    hours = @seconds/3600
    @seconds = @seconds - (hours*3600)
    minutes = @seconds/60
    @seconds = @seconds - (minutes*60)
    time_to_string = hours.to_s + " " + minutes.to_s + " " + @seconds.to_s
    time_to_string = time_to_string.split(" ").map{|str| (str.length < 2) ? str = "0" + str : str}.join(":")
  end
end
