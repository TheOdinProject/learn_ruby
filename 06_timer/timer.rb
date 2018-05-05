class Timer
  attr_accessor(:seconds, :minutes, :hours)
  
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    # @minutes = @seconds / 60
    # @hours = @minutes / 60
    @hours = @seconds / 3600
    @minutes = (@seconds % 3600) / 60
    @seconds = (@seconds % 3600) % 60
    sprintf("%02d:%02d:%02d", @hours, @minutes, @seconds)
  end

end
