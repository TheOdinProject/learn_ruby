class Timer
  #write your code here
  attr_accessor :seconds, :padded # tu już stworzyłem metode seconds. Musze podać także atrybut, zeby byl dostepny dla time_string
def initialize # tu stworzylem domyślną wartość dla seconds - która równa się 0
	self.seconds = 0 # musze użyć self!! 
end

  def time_string

    s = seconds
    if s / 60 > 0 
      s = s % 60
    end

    m = seconds / 60
    if m / 60 > 0
      m = m % 60
    end

    h = seconds / 3600

time_string = padded(h) + ":" + padded(m) + ":" + padded(s)

  end

  def padded n
    if n < 10
    n = "0" + n.to_s
    else
      n = n.to_s
    end
  end


end
