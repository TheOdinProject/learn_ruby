class Timer
  attr_accessor :seconds
  @@seconds_in_hour = 60 * 60
  @@seconds_in_minute = 60

  def initialize
    @seconds = 0
  end

  def time_string
    hours = (@seconds / @@seconds_in_hour).floor
    minutes = ((@seconds % @@seconds_in_hour) /  @@seconds_in_minute).floor
    seconds = ((@seconds % @@seconds_in_hour) % @@seconds_in_minute)
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  #private  #comment out to pass test cases
    def padded(number)
      padded = number.to_s
      padded.rjust(2,'0')
    end
end
