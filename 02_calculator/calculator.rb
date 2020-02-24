def add(n1, n2)
    n1 + n2
end

def subtract(n1, n2)
    n1 - n2
end

def sum(arr)
    arr.sum
end

def multiply(*others)
    others.inject { |product, n| product * n } 
end

def power(n, exp)
    ans = n
    (exp-1).times do 
        ans *= n
    end
    return ans
end

def factorial(n)
    if n == 0
        return 1
    end

    n * factorial(n-1)
end
