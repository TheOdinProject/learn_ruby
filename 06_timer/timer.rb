class Timer
  #write your code here
  attr_accessor :seconds, :minutes, :hours
  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    time_remaining = @seconds

    @hours, time_remaining = time_remaining / 3600, time_remaining % 3600
    @minutes, time_remaining = time_remaining / 60, time_remaining % 60
    @seconds = time_remaining

    "#{@hours.to_s.rjust(2,"0")}:#{@minutes.to_s.rjust(2,"0")}:#{@seconds.to_s.rjust(2,"0")}"
  end
end