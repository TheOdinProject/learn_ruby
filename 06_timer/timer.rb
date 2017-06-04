class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    [hours, minutes, m_seconds].map(&method(:padded)).join(":")
  end

  def hours
    seconds / 3600
  end

  def minutes
    (seconds % 3600)/60
  end

  def m_seconds
    (seconds % 60)
  end

  def padded(n)
    "#{n}".rjust(2,'0')
  end
end
