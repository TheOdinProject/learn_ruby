#write your code here
def line(x,y,x1,y1)
  return Proc.new { |t |   ((t- x) * (y1- y)/ (x1 - x)  + y) }
end

def toCelsius(c)
  f - 32 / 1.8
end

def toFahrenheit(c)
  1.8 * c + 32
end

def ftoc(temperature)
  # temperature = temperature - 32  if temperature == 32 #0
  # temperature = 100 if temperature == 212

  line(32,0,212,100).call(temperature).round
end

def ctof(temperature)
    # temperature = 32  if temperature == 0 #0
    # temperature = 212 if temperature == 100
    # temperature = 68 if temperature == 20
    # temperature = 98.6 if temperature == 37
#line(0,32,100,212).call(temperature)
toFahrenheit(temperature)
end

print ctof(37)
