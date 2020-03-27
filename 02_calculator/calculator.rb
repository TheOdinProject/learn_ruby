#write your code here

def add n1, n2
  return n1 + n2
end


def subtract n1, n2
  return n1-n2
end


def sum arr
  s = 0
  arr.each do |n|
    s = s + n
  end
  return s
end


def multiply n1, n2
  return n1 * n2
end


def product arr
  prod = 1
  arr.each do |n|
    prod = prod * n
  end
  return prod
end


def raise n1,n2
  return n1**n2
end

def factorial n
  f = 1
  for i in 1..n
    f = f*i
  end
  
  return f
end
