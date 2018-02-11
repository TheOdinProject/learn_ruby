def add (num1, num2)
  num1+num2
 end

def subtract(num1, num2)
  num1-num2
end

def sum(array)
  sum = 0
  array.each { |a| sum+=a }
  sum
end

def power(base, exponent)
  base**exponent
end

def multiply(*nums)
  total=1
  nums.each{|n| total*=n}
  total
end

def factorial(num)
  if num==0
    1
  else
    num*factorial(num-1)
  end
end