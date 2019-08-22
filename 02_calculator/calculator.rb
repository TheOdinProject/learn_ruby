def add(a, b)
	a+b
end
def subtract(a, b)
	a-b
end
def sum(arr)
	returned = 0
	arr.length.times do |x|
		puts "Array length is #{arr.length}"
		puts "Array value is #{arr}"
		puts "One iteration...#{arr[x]}"
		returned = returned + arr[x]
	end
	returned
end
