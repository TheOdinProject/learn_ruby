#write your code here
def echo (x)
  x
end
def shout (x)
  x.upcase
end
def repeat (x, y = 2)
  ([x] * y).join ' '
end
def start_of_word (x, y)
  x[0...y]
end  
def first_word (x)
  x[/(\S+)/, 1]
end
def titleize (x)
	x.capitalize! #Needed to capitalize words at the beginning of a title
	my_array = x.split
	my_array.each do |i|
		i.capitalize! if i.length > 3 unless i == "over" #over to be not captilized  but kwai does.
	end
	my_array.join (' ')	
end


