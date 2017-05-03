class Book
	attr_accessor :title

	def title
		small_words = %w(and in the of a an)
		title = @title.split.map do |word|
			if (small_words.include? word)
				word
			else
				word.capitalize
			end
		end
		title.first.capitalize!
		title.join ' '
	end

end
