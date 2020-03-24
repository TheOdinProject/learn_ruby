def add x,y
    return x+y
end

def subtract x,y
    return x-y
end

def sum input
    return input.inject(0) { |sum, num| sum + num }
end

def multiply input
    return input.inject{ |mul, num| mul * num}
end

def power x,y
    return x**y
end

def factorial input
    if input==0 or input==1
        return 1
    else
        result = 1
        while input > 0
            result = result *= input
            input -= 1
        end
        
        return result       
    end
end
        