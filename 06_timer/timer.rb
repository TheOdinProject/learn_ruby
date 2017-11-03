class Timer
#intializes seconds to "0"
  def initialize ()
    @seconds = 0
  end


  def seconds=(input)
     t = Time.new(2017)
     t = t + input
     @seconds = t.strftime ("%T")
  end

#setters
  def seconds
    @seconds
  end

  def time_string
    @seconds
  end
end
