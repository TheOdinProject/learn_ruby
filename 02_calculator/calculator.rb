def add (x, y)
  x + y
end
def subtract (x, y)
  x - y
end
def sum (array)
  y = 0
  array.each { |x| y += x}
  y
end
def multiply (x, y)
  x * y
end
def power (x, y)
  x ** y
end
def factorial (x)
  sum = 0
  for y in 1..x
    sum += y
  end
  sum
end
