class Timer
  #write your code here
  def initialize
      @clock = [00,00,00]
      @seconds = 0
  end
  
  def seconds=(seconds)
      @seconds = seconds
  end
  
  def seconds
      @seconds
    end
  
  def time_string
      return "00:00:00" if seconds < 1
      minutes = (@seconds / 60).to_i
      @seconds -= (60 * minutes)
      
      hours = (minutes / 60).to_i
      minutes -= (60 * hours)
      
      display_time(@seconds, 2)
      display_time(minutes, 1)
      display_time(hours, 0)
      
      @clock.join(":")
  end
  
  private
  
  def display_time(time_value, index_value)
      if time_value < 10
          @clock[index_value] = "0" + time_value.to_s
          return
      else
          @clock[index_value] = time_value.to_s
          return
      end
  end
  
  
end
