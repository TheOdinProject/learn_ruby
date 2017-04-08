#write your code here


def add(x,y)
   x + y
end

def subtract(x , y)
  x - y
end

def sum(array)
  if array.empty?
    0
  else
    array.reduce(0,:+)
  end
end


def multiply( * numbers )
  numbers.reduce(1, :*)
end

def power(n,p,acc= 1)
  if n == 0
    0
  elsif p == 0
    acc
  else
    power(n,p-1,acc * n)
  end
end

def factorial(n , acc = 1)
  if n == 0
    0
  elsif n == 1
    acc
  else
    factorial(n-1, acc * n)
  end
end
