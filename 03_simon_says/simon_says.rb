#write your code here
def echo(what)
	what	
end

def shout(what)
	what.upcase
end

def repeat(what, num = 2) # equal sign makes it an optional param with a default value
	array = Array.new(num, what)
	array.join(' ')
end

def start_of_word(word, numChars = 1)
	word[0..numChars-1]
end

def first_word(someString)
	array = someString.split
	array[0]
end

def titleize(someString)
	array = someString.split
	array[0] = array[0].capitalize
	array.map! { |e| 
		if e == "and" or e == "or" or e == "to" or e == "the"
			e #do nothing
		else
			e.capitalize 
		end
	}
	array.join(" ")
end
