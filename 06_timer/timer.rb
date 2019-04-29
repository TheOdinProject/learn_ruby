class Timer
  attr_accessor :seconds
  
  def initialize 
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds % 3600) / 60
    hours = @seconds/3600
  
    sprintf("%02d:%02d:%02d", hours,minutes,seconds)
  end

end
