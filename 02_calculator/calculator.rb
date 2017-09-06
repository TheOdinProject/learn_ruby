#write your code here
def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	n = array.length - 1
	sum = array[n]
	if sum == nil
		sum = 0
	else
		while n != 0
			sum = sum + array[n-1]
			n = n - 1
		end
	end
	sum
end


def multiply(array)
	n = array.length - 1
	sum = array[n]
	if sum == nil
		sum = 0
	else
		while n != 0
			sum = sum * array[n-1]
			n = n - 1
		end
	end
	sum
end

def power(a,b)
	a**b
end





def factorial(a)
	if a == 0 || a == nil
		a = 1 
	else
		emptyarray = []

		emptyarray << a
		
		a = a+1

		while a != 1
			emptyarray << a-1
			a = a-1
		end

		n = emptyarray.length - 1
		a = emptyarray[n]

		if a == nil 
			a = 0 
		else
			while n !=1 
				a = a * emptyarray[n-1]
				n = n -1
			end
		end
	end
	a
end

puts factorial(10)