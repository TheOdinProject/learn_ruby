#write your code here

def add(a, b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	array.inject(0){|sum,x| sum + x }
end

def multiply(array)
	array.inject{|product, x| product * x}
end

def power(a,b)
	a ** b
end

def factorial(n)
	(1..n).inject(:*) || 1
end