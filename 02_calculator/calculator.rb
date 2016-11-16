#write your code here
def add num1,num2
	num1 + num2
end

def subtract num1,num2
	num1 - num2
end

def sum num
	ans = 0
	if num.length < 1
  		ans
  	else 
		num.each { |a| ans += a }
		ans
  	end
end

def multiply num
	ans = 0
	if num.length < 1
		ans
	else
		ans = 1
		num.each{ |i| ans *= i}
		ans
	end
end


def power num1, num2
	num1**num2
end

def factorial num
	ans = 1
	while num > 0
		ans *=num
		num -=1
	end	
	ans
end