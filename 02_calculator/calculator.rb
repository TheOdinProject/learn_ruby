#write your code here
def add(num1,num2)
	num1 + num2	
end

def subtract(num1, num2)
	num1-num2
end

def sum(array)
	sum = 0.0
	if array.length > 0
		array.each do |num|
			sum += num
		end
	end
	return sum
end