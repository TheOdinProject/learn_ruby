class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds= amount
    if amount < 10
      @time_string = "00:00:0" + amount.to_s
    elsif amount < 60
      @time_string = "00:00:" + amount.to_s
    else
      amount_hours = amount / 3600
      amount_min = (amount % 3600) / 60
      amount_sec = amount % 60
      if amount_hours < 10 && amount_min < 10 &&amount_sec > 10
        @time_string = "0" + amount_hours.to_s + ":0" + amount_min.to_s + ":" + amount_sec.to_s
      elsif amount_hours < 10 && amount_min < 10 && amount_sec < 10
        @time_string = "0" + amount_hours.to_s + ":0" + amount_min.to_s + ":0" + amount_sec.to_s
      elsif amount_hours < 10 && amount_min > 10 && amount_sec > 10
        @time_string = "0" + amount_hours.to_s + ":" + amount_min.to_s + ":" + amount_sec.to_s
      elsif amount_hours < 10 && amount_min > 10 && amount_sec < 10
        @time_string = "0" + amount_hours.to_s + ":" + amount_min.to_s + ":0" + amount_sec.to_s
      end
    end
  end

    def time_string
      @time_string
    end

  end
