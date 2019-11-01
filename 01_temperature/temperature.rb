#write your code here
def ftoc(temperature)
    celsius = temperature - 32
    celsius = celsius / 1.8
    celsius.round
end

def ctof(temperature)
    fahrenheit = temperature * 1.8
    fahrenheit = fahrenheit + 32
    fahrenheit.round(1)
end
