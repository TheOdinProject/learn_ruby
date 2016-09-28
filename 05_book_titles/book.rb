class Book
	attr_accessor :title
	def title
		little_words = ["the", "a" , "an", "and", "or", "in", "on","of"]
		@title.split().each_with_index {|w,i| 
			if !little_words.include?(w) || i == 0
				w.capitalize!
			end
		}.join(" ")
	end
end
