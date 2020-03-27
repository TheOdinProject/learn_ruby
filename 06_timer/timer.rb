class Timer
  #write your code here

  def initialize
    @seconds = 0
  end

  def seconds=(number)
    @seconds = number
  end

  def seconds
    return @seconds
  end

  def time_string
    @hours = @seconds/3600
    @seconds = @seconds%3600
    @minutes = @seconds/60
    @seconds = @seconds%60
    sprintf("%02d:%02d:%02d", @hours, @minutes, @seconds)
  end

  def padded (num)
    @padded = num
    if num/10 < 1
      return "0#{num}"
    else
      return num.to_s
    end
  end

end

 t = Timer.new

 t.padded(1)
