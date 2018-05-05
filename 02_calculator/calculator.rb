def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    total = 0
    array.each {|item| total += item}
    total
end

def multiply(array)
    total = 1
    array.each {|item| total *= item}
    total
end

def power(a, b)
    a**b
end

def factorial(int)
    unless int == 0
        product = 1
        for i in -int..-1
            product *= (i * -1)
        end
        product
    else
        int
    end
end