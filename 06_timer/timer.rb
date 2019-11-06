class Timer
  
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end 

  def seconds=(num)
    @seconds = num
    set_time(@seconds)
  end

  def time_string
    @time_string
  end

  def set_time(seconds)
    hours = seconds / 3600 
    minutes = (seconds % 3600) / 60
    actual_seconds = seconds - (hours * 3600 + minutes * 60)
    finally = ["00", ":", "00", ":", "00"];
    finally[0] = pad_numbers(hours.to_s)
    finally[2] = pad_numbers(minutes.to_s)
    finally[4] = pad_numbers(actual_seconds.to_s)

    @time_string = finally.join("")
  end

end

def pad_numbers(num_string)
  finally = num_string
  
  if num_string.length == 1
      finally = "0" + num_string
      return finally
  else
      return finally
  end
end

