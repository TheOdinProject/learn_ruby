def add (num1, num2)
    num1 + num2
end

def subtract (num1, num2)
    num1 - num2
end

def sum (arr)
    arr.inject(0,:+)
end

def multiply (arr)
    return 0 if arr == []
    arr.inject(:*)
end

def power (num1, num2)
    if num1 == 0 && num2 == 0 
        return "undefined"
    end
    num1 ** num2
end

def factorial num
    factorial = 1
    (1..num).each do |item|
        factorial *= item
    end
    factorial
end
