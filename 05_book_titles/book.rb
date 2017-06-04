class Book
	
	attr_accessor :title

		def title=(book_title)

			#split the words
			array_word = book_title.split(' ')
			
			#capitalizes the first word
			array_word[0].capitalize!

			#a short way of writing arrays of strings seperated by spaces
			conjunctions = %w{a an and in of the}

			#run through each word in the array starting from the index 1, since array_word[0] is always capitalzed
			#map! changes the original array, same as capitalize!, map is the same as each
			array_word[1..-1].map! do |word|

				#checks if the current word is equal to the conjunctions if not, capitalize
				if conjunctions.include?(word) 
					word
				else
					word.capitalize!
				end
				end
			@title = array_word.join(' ') #joins the array together with a space

		end
end
