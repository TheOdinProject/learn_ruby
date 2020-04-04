class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
    
    def padded(number)
      if number < 10
        "0#{number}"
      else
        "#{number}"
      end
    end

    def time_string

      if  seconds < 60
        sec = seconds
        "00:00:#{padded(seconds)}"
      elsif seconds < 3600
        min = seconds / 60
        sec = seconds % 60
        "00:#{padded(min)}:#{padded(sec)}"
      else
        hours = seconds / 3600
        min = seconds % 3600 / 60
        sec = seconds % 3600 % 60
        "#{padded(hours)}:#{padded(min)}:#{padded(sec)}"
      end

    end
  end
end
