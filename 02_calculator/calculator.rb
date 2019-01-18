#write your code here
def add (a, b)
    return a + b
end

def subtract (a, b)
    return a - b
end

def sum (array)
    result = 0
    array.each do |item|
        result = result + item
    end
    return result
end
