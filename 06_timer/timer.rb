class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
    @time = Time.new(0)
  end

  def time_string
    @time += @seconds
    "#{padded(@time.hour)}:#{padded(@time.min)}:#{padded(@time.sec)}"
  end

  def padded(n)
    if n.to_s.length > 1
      return n.to_s
    else
      return '0' + n.to_s
    end
  end
end
