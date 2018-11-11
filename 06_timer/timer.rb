class Timer
  attr_accessor :seconds

    def initialize
      @seconds = 0 
    end

    def time_string
      def pad digit
        digit <10 ? '0' + digit.to_s : digit.to_s
      end
    "#{pad(@seconds/3600)}:#{pad(@seconds/60 -(@seconds/3600)*60)}:#{pad(@seconds%60)}"
    end
        
end
