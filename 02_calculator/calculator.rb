def add(x, y)

	x + y
	
end

def subtract(x, y)

	x - y
	
end

def sum(array)
	sum = 0
	array.each do |i| 
		sum += i	
	end
	sum
end

def multiply(array)
	result = 1
	array.each do |i|
		result *= i
	end
	result
end

def power(a, b)
	a**b
end

def factorial(a)
		result = 1
		(1..a).to_a.each do |x|
			result *= x
		end
		return result      
	
end
