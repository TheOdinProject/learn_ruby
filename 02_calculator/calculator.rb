#write your code here

# add two numbers
def add(x, y)
  x + y
end

# subtract two numbers
def subtract(x, y)
  x - y
end

# calculate the sum of all numbers in an array
def sum(arr)
  arr.inject(0, :+)
end

#multiply numbers within the array
def multiply (arr)
  arr.inject(:*)
end

#calculate x to the y power
def power (x,y)
  x**y
end

#calculate factorial -- num!
def factor(num)
  (1..num).inject(1, :*)
end