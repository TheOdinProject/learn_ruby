def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(a)
    sum = 0
    a.each {|n| sum += n}
    sum
end

def multiply (a)
    product = 1
    a.each {|n| product *= n}
    product
end

def power(number, power)
    number ** power
end

def factorial(n)
    product = 1
    (1..n).each {|num| product *= num}
    product
end
