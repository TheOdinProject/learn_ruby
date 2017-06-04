class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	h = (seconds/3600).to_s.rjust(2, '0')
  	m = ( (seconds%3600)/60 ).to_s.rjust(2, '0')
  	s = ( (seconds%3600)%60 ).to_s.rjust(2, '0')
  	h + ":" + m + ":" + s
  end
end
