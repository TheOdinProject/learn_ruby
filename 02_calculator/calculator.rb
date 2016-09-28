#write your code here
def add(n1,n2)
	n1 + n2
end

def subtract(n1,n2)
	n1 - n2
end

def sum(numArr)
	s = 0
	numArr.each do |n|
		s += n
	end
	s
end

def multiply(nums)
	m = nums.length > 0 ? 1:0
	nums.each do |n|
		m *= n
	end
	m
end

def power(num, pow)
	ans = 1.0
	pow.abs.times do 
		ans *= num
	end
	if pow < 0
		return 1.0/ans
	else
		return ans
	end
end

def factorial(n)
	if n == 0
		return 0
	elsif n == 1
		return 1
	else
		return n * factorial(n-1)
	end
end