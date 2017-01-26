class Timer

  attr_accessor :seconds

  def initialize
      @seconds = 0
  end

  def time_string

        hours = @seconds /  3600
        hours_str = hours.to_s
            if hours_str.length == 1
                p hour_str = '0'+ hours_str
            end

        minutes = (@seconds % 3600)  /  60
        minutes_str = minutes.to_s
            if minutes_str.length == 1
                minutes_str = '0'+ minutes_str
            end

        seconds = (@seconds % 3600) % 60
        seconds_str = seconds.to_s
            if seconds_str.length == 1
                seconds_str = '0'+ seconds_str
            end

        p "#{hour_str}:#{minutes_str}:#{seconds_str}"
  end
end
