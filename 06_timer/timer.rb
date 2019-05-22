class Timer
  attr_accessor :seconds

  def initialize 
    @seconds = 0
  end

  def seconds
    @seconds
  end
  
  def time_string
    @minutes = @seconds / 60
    @hours = @minutes / 60

    @minutes = @minutes % 60
    @seconds = @seconds % 60 % 60

    "%02d:%02d:%02d" % [@hours,@minutes,@seconds]
  end

end
