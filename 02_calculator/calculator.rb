#write your code here
def add a, b
  a + b
end

def subtract a, b
  a - b
end

def sum array
  total = 0
  array.each do |x|
    total += x
  end
  total
end

def multiply *terms
  total = 1
  terms.each do |x|
    total *= x
  end
  total
end

def power a, b
  total = 1
  b.times do
    total *= a
  end
  total
end

def factorial n
  if (n == 0)
    return 1
  else
    return n * factorial(n - 1)
  end
end
