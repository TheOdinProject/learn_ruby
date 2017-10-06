


class Book
# write your code here	
	attr_accessor :title
	def title

		@title = @title.to_s.capitalize
		nocapitalize = ["and","over","the","in","of", "a", "an"]
		if @title.include?(" ")

			splitTitle = @title
			splitTitle = splitTitle.split.map! do |name| 
				if nocapitalize.include?(name)  #przeanalizuj sobie i zwroc uwage na składnie!
				name
				else
				name.capitalize
				end

		end

			splitTitle[0].capitalize!
			splitTitle = splitTitle.join(" ")
			@title = splitTitle
		end
		@title 
	end
	# title
end
