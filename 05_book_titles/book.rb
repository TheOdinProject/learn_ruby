class Book

	attr_writer :title

	@@dont_capitalize = %w{the a an and to in of}

	def title
		words = @title.split

		words.each_with_index do |word, index|
			word.capitalize!  if index == 0 || (!@@dont_capitalize.include? words[index])
		end
		book = words.join(" ")
	end

end

book = Book.new
book.title = "the man in the iron mask"
puts book.title