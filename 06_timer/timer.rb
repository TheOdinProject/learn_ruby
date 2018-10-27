class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remainder = @seconds%3600
    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
  end  

end

# Timer
#   should initialize to 0 seconds
#   time_string
#     should display 0 seconds as 00:00:00
#     should display 12 seconds as 00:00:12
#     should display 66 seconds as 00:01:06
#     should display 4000 seconds as 01:06:40

# Finished in 0.00177 seconds (files took 0.0712 seconds to load)
# 5 examples, 0 failures
