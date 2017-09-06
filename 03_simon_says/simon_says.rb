#write your code here

##
# ECHO
##

	def echo(a)
		echo = a
	end

##
# SHOUT
##

	def shout(a)
		shout = a.upcase
	end

##
# REPEAT
##

	def repeat(a,b=2)
		repeat = ("#{a} " * b).chop
	end

##	
# START OF WORD
##
	def start_of_word(a,b)
		b = b -1
		start_of_word = a[b]
		
		n = b-1
		while b != 0
			b = b-1
			start_of_word = a[n] + start_of_word
			n = n-1
		end

		start_of_word
	end

=begin 
another, easier sollution:

def start_of_word(s, n)
  s[0...n]
end
=end



## 
# FIRST WORD
##

	def first_word(a)
		a = a.split[0]
	end

##
# TITLEIZE
##

	def titleize(a)

		a = a.split.map! do |name| 
				if name != "and" && name != "over" && name != "the"
				name.capitalize
				else
				name
				end
		end

			a[0].capitalize!
			a = a.join(" ")
			a
	end