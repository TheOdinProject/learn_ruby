#write your code here
def add(num1, num2)
    return num1 + num2
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(arr)
    total = 0
    arr.each do |num|
        total += num
    end
    return total
end

def multiply(arr)
    total = 1
    count = 0
    arr.each do |num|
        if count == (arr.length-1)
            return total * num
        else 
            total = num * total
            count += 1
        end
    end
end

def power(num1, num2)
    return num1**num2
end

def factorial(num)
    total = 1
    while num > 0
        total = num * total
        num -= 1
    end
    return total
end


        