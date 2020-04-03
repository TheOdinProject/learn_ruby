#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    array.sum
end

def multiply(array)
    i = 0
    accumulator = 1
    while i < array.length
        accumulator = accumulator * array[i]
        i += 1
    end
    accumulator
end

def power(a, b)
    accumulator = 1
    i = 0
    while i < b
        accumulator *= a
        i += 1
    end
    accumulator 
end

def factorial(a)
    if a == 0
        n = 1
        n
    else
        accumulator = 1
        i = a
        while i > 0
            accumulator *= i
            i -= 1
        end
        accumulator
    end 
end
