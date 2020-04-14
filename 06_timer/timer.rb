class Timer
  attr_accessor :seconds
  
  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def time_string
    sec = @seconds - (@seconds/60*60)
    min = (@seconds/60 - @seconds/60/60*60)
    hrs = @seconds/3600

    if sec < 10
      sec = "0#{sec}"
    end
    if min < 10
      min = "0#{min}"
    end
    if hrs < 10
      hrs = "0#{hrs}"
    end

    "#{hrs}:#{min}:#{sec}"
  end
end