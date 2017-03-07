class Book
	attr_accessor :name

	def title=(name)
		ignore_words = ["the", "a", "an", "and", "of", "if", "over", "in"]
		words = name.split
		for i in (0..(words.length - 1))
			if i == 0
				words[i] = words[i].capitalize
			elsif ignore_words.include?(words[i].downcase)
			else
				words[i] = words[i].capitalize
			end
		end

		@title = words.join(" ")
	end

	def title
		@title
	end
end

#@book = Book.new
#@book.name = "Brave New World"
#@book.title