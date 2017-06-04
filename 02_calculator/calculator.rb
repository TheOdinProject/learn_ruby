def add(a, b)
   a + b
end


def subtract(a, b)
  a - b
end


def sum(num_array)
  sum = 0
  num_array.each do |i|
    sum += i
  end
  sum
end


def multiply(array_num)
  product = 1
  array_num.each do |i|
    product *= i
  end
  product
end


def power(num, exp)
  answer = num ** exp
end


def factorial(num)
  if num <= 0
    return 1
  end
  num * factorial(num-1)
end