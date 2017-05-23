class Timer
  # write your code here
  attr_reader :seconds
  attr_writer :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    secs = @seconds
    mins, secs = secs.divmod(60)
    hours, mins = mins.divmod(60)

    [hours, mins, secs].map { |e| e.to_s.rjust(2, '0') }.join ':'
  end
end
