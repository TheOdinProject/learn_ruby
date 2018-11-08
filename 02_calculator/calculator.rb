def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(a)
    a.reduce(0) {|b,c| b + c}
end

def multiply(a)
    a.reduce() {|b,c| b * c}
end

def power(a,b)
    a ** b
end
    
def factorial(a)
    (1..a).inject(:*)||1
end