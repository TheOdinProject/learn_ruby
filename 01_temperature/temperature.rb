def ftoc number
    number = (((number-32)*5) / 9)
    return number
end

def ctof number
    number = (number*9)/5.0 + 32
    return number
end