# Simple calculator


def add(a, b)
	result = a + b
end

def subtract(a, b)
	result = a - b
end

def sum(a)
	result = 0
	a.each do |x|
		result += x
	end
	result
end

def multiply(*a)
	result = 1
	a.each do |x|
		result = result * x
	end
	result
end

def power(a, b)
	result = a ** b
end

# the factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n

def factorial(a)
	result = 1
	if a == 0
		result = 0
	elsif a.downto(1) do |x|
		result *= x
		# puts "X: #{x}"
		# puts "RESULT: #{result}"
		end
	end
	result
end
