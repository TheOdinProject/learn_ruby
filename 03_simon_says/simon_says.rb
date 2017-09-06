#write your code here
	def echo(a)
		echo = a
	end

	def shout(a)
		shout = a.upcase
	end


	def repeat(a,b=2)
		repeat = ("#{a} " * b).chop
	end

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