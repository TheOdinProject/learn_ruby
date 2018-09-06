def add(*numbers)
  result = 0
  numbers.each {|n| result += n}
  result
end

def subtract(*numbers)
  result = numbers[0]
  numbers.drop(1).each {|n| result -= n}
  result
end

def sum(array)
  add(*array)
end

def multiply(*numbers)
  result = 1
  numbers.each {|n| result *= n}
  result
end

def power(a, b)
  a**b
end

def factorial(number)
  result = 1
  number.downto(1) {|n| result *= n} if (number > 1)
  result
end