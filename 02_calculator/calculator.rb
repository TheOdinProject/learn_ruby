# write your code here
def add(i, j)
  i + j
end

def subtract(i, j)
  i - j
end

def sum(array)
  number = 0
  array.each { |i| number += i }
  number
end

def multiply(array)
  total = 1
  array.each { |i| total *= i }
  total
end

def power(a, b)
  a**b
end

def factorial(x)
  total = 1
  (1..x).each { |i| total *= i } unless x <= 1
  total
end
