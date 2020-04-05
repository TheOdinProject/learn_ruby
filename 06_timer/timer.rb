class Timer
  attr_accessor :seconds

  def initialize 
    @seconds = 0
  end


  def format (num)
    if num < 10
      '0' + num.to_s
    else
      num.to_s
    end
  end

  def time_string
    if @seconds > 60
      minutes = @seconds / 60
      @seconds = @seconds % 60
    else
      minutes = 0
    end
    if minutes > 60
      hours = minutes / 60
      minutes = minutes % 60
    else
      hours = 0
    end
    format(hours) + ":" + format(minutes) + ':' + format(@seconds)
  end
end