#write your code here


def add(var1, var2)
    result=0
    result = var1 + var2
    return result
end

def subtract(var1, var2)
    result=0
    result = var1 - var2
    return result
end

def sum(arr)
    result = 0
    arr.each{ |i| result=i+result}
    return result
end

def multiply(var1, var2)
    result=0
    result = var1 * var2
    return result
end

def power(var1, var2)
    result=0
    result = var1 ** var2
    return result
end

def factorial(number)
    result=1
    if (number==0)
        result=1
    else
        while number>0
            result = result*number
            number-=1
        end
    end

    return result
end