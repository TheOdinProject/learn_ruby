#write your code here
def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(arr)
    if arr.empty?
        return 0
    end
    arr.reduce(:+)
end

def multiply(arr)
    arr.reduce(:*)
end

def power(a,b)
    a**b
end

def factorial(a)
    if a == 0
        1
    else
        (1..a).to_a.reduce(:+)
    end
end