class Book
	attr_reader :title

	def title=(str)
		@title = titleize(str)
	end

	def titleize(someString)
		words = someString.split
		words[0] = words[0].capitalize
		words.map! { |e| 
			if e == "i" 
				e.capitalize
			elsif e == "and" or e == "the" or e.length<=2
				e #do nothing
			else
				e.capitalize 
			end
		}
		words.join(" ")
	end
end
