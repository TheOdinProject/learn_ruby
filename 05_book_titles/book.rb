class Book
	attr_reader :title
	def title=(temp_title)
		words = temp_title.split(' ')
		returner = []
		non_cap_words = ['and', 'in', 'the', 'of', 'a', 'an']
		words.each_with_index do |word, x|
			if x == 0
				returner.push(word.capitalize + ' ')
			elsif non_cap_words.include? words[x] 
				returner.push(word + ' ')
			else
				returner.push(word.capitalize + ' ')
			end
		end
		@title = returner.join.rstrip
	end
end
