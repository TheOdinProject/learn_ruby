#write your code here
def add(a, b)
  return a + b

end

def subtract(a, b)
  return a - b
end

def sum (array)
  
  array.inject(0) {|sum, a| sum += a}
end
# extra Credit

def multiply (a, *b)
  return b.reduce(a) {|o, x| o * x}
end

def power(a, b)
  return a ** b
end

def factorial(n)
  if n == 0
     return 1
  else
     return n * factorial(n-1)
  end
end
