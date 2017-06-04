#write your code here
def add(addend_one,addend_two)

	sum = addend_one + addend_two
end

def subtract(subtrahend,minuend)
	
	difference = subtrahend - minuend
end	

def sum(array_of_numbers)
	i = 0
	sum = 0
	if(array_of_numbers[0] == nil)
		return 0
	
	else 
		while i < array_of_numbers.length  
			
		sum = sum + array_of_numbers[i]

		i = i + 1

		end
		
	end	
	
	return sum
end

def multiply(array_of_numbers)
	i = 0
	product = 1
	if(array_of_numbers[0] == nil)
		return 0
	else
		while i < array_of_numbers.length
			product = product * array_of_numbers[i] 

			i = i + 1
		end
	end

	return product
end

def power(number)

	powerth = number * number

	return powerth
end

def factorial(number)
	result = 1
	
	if(number == 0)
		return 0
	end

	while number > 0
		result = result * number

		number = number - 1
	end

	return result
end