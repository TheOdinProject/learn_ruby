class Timer
    attr_accessor :seconds

  def seconds
    return 0
  end

  def time_string
      time = Time.new(0) + @seconds  
      return time.strftime("%H:%M:%S")
  end
  
end
