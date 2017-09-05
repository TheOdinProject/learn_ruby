#write your code here
	def initialize
	end
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
		if b == 1
		start_of_word = a[b-1]
		else
		start_of_word = ""
		while  b != 1
		b = b-1
		start_of_word = a[b-1]
		b.times do 
		start_of_word = start_of_word + a[b]
		end
		start_of_word
	end
	end
