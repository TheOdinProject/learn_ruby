class Timer

public
def initialize
  @time = {hour: 0 , minute: 0 , second: 0}
end

def seconds
   @time[:second]
end

def seconds=(time)
   seconde_to_hour(time)
end

def time_string
  [:hour,:minute,:second].map {|type|
    format_number(@time[type])  }.join(":")
end

private

def format_number(n)
  n.to_s.rjust(2,"0")
end

def seconde_to_hour(s)
  @time[:hour] = s / 3600
  @time[:minute] = s % 3600 /60
  @time[:second] = s % 60
 end

end
