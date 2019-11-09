def add a, b
    return a + b
end

def subtract a, b
    return a - b
end

def sum array
    array.inject(0, :+)
end

def multiply array
    array.inject(:*)
end

def power x, y
    return x**y
end

def factorial num
    fact = 1
    while num > 0 do
        fact = fact * num
        num = num -1
    end
    puts fact
end