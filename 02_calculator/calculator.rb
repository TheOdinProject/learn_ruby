def add(a,b)
  return a + b#write your code here
end

def subtract(a,b)
  return a -= b
end

def sum(array)
  sum = 0.0
  result = 0.0

  if array.length > 0 then
    array.each do |number|
      sum += number
    end
    result = sum
  end
  return result
end

def multiply(*numbers)
  return numbers.reduce(1, :*)
end

def power(a,b)
  a**b
end

def factorial
  if a == 0
    return 1
  else
    return a * factorial(a-1)
  end
end
