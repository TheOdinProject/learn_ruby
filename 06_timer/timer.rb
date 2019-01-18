class Timer
  #write your code here
  attr_accessor :seconds

  def initialize 
    @seconds = 0
  end

  def padded t
    (t < 10 ? "0" + t.to_s : t).to_s
  end

  def time_string
    padded( @seconds/(60*60)) + ":" +
    padded((@seconds/60)%60)  + ":" +
    padded( @seconds%60)
  end
end
