#write your code here
def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
 array.inject(0) { |result, p| result + p}
end

def multiply(arr)
  arr.inject(:*)
end

def power(x,y)
  x**y
end

def factorial(x)
  result = 1

  if x == 0
    return 1
  else
    while x > 0 do
      result *= x
      x -= 1
    end
  end
  
  return result
end