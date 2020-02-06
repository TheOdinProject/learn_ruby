#write your code here
def add(a, b) 
  a + b
end

def subtract(c, d)
  c - d
end

def sum(array) 
  array.reduce(0, :+) 
end
  
def multiply(*nums)
  result = 1
  nums.each do |x|
    result = result * x
  end
  result
end

def power(a,b)
 result = a ** b
end

def factorial(num)
  return 1 unless num > 0
  num * factorial(num - 1)
end
