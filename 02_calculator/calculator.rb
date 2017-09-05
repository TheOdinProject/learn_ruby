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

def factorial #uzyj tablic - 

end