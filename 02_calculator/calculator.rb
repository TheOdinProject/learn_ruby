#write your code here
def add (num1, num2)
	num1 + num2
end

def subtract (num1, num2)
	num1 - num2
end

def sum (numbers)
	if numbers.length > 0
		n = numbers.length
		i = 1
		sum = numbers[0]
		while i < n
			sum = sum + numbers[i]
			i = i + 1
		end
		sum
	else 0
	end
end

def multiply (numbers)
	i = 0
	total = 1
	while i < numbers.length
		total = total * numbers[i]
		i = i + 1
	end
	total
end

def power (num1, num2)
	num1 ** num2
end

def factorial (n)
	total = 1
	while n > 1
		total = total * n
		n = n - 1
	end
	total
end