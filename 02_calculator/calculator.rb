#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  arr.inject(0) do |total, current|
    total + current
  end
end

def multiply(arr)
  arr.inject(1) do |total, current|
    total * current
  end
end

def power(a, b)
  a ** b
end

 def factorial(n)
  total = 1
  i = 1
  n.times do
    total *= i
    i += 1
  end
  total
end
