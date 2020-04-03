#write your code here
def temperature
end

def ftoc(fahr)
    cels = ((fahr - 32) / 1.8).round
    cels
end

def ctof(cels)
    fahr = ((cels * 1.8) + 32).round(1)
end