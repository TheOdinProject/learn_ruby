class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    number = @seconds

    if number == 0
      "00:00:00"
    else
      hour = (number/3600).floor
      minute = ((number - (hour*3600))/60).floor
      second = number - (hour*3600) - (minute*60)

      pad(hour) + ':' + pad(minute) + ':' + pad(second)

    end
  end
  def pad(number)
    if number.to_s.length == 1
      '0' + number.to_s
    else
      number.to_s
    end
  end
end
