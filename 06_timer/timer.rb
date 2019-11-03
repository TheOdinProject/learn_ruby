class Timer
  #write your code here
    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def time_string
        seconds = format @seconds % 60
        minutes = format (@seconds / 60) % 60
        hours   = format (@seconds / 3600) % 60
        hours + ':' + minutes + ':' + seconds
    end

    def format time
        time.to_s.rjust(2, '0')
    end
    
end
