#write your code here

def add(num1,num2)
  num1 + num2
end

def subtract(num1,num2)
  num1 - num2
end

def sum(arr)
  arr.reduce(0){|sum,num| sum+num}
end

def multiply(*nums)
  nums.reduce(1){|product,num| product*num}
end

def factorial(num)
  return 1 unless num > 1
  (1..num).reduce(1){|prod,num|prod*num}
end

def power(coeff,pow)
  return 1 unless pow > 0
  return coeff unless pow > 1
  coeff**pow
end
