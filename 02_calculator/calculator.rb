def add (num1, num2)
  return num1 + num2
end

def subtract (num1, num2)
  return num1 - num2
end

def sum (number_array)
  array_total = 0
  number_array.each do |number|
  array_total = number + array_total
  end
  return array_total
end

def multiply (*numbers)
  result = 1
  numbers.each do |number|
    result = result * number
  end
  return result
end

def power (num1, num2)
  return num1**num2
end

def factorial (num)
  if num <= 1
    sum = 1
    return sum
  else
    sum = num * factorial(num - 1)
  end
  return sum
end
