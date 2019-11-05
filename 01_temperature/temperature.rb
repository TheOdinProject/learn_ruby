def ftoc(number)
    finally = (number - 32) * (5 / 9.0)
    return finally
end

def ctof(number)
    finally = (9.0 / 5) * number + 32
    return finally
end
