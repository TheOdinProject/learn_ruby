class Book
	attr_reader :title

	def title=(name)
    except = ["and", "do", "the", "a", "an", "in", "of"]
		name = name.split(" ")

		name.each do |word|
			if !except.include? word
				word.capitalize!
			end
		end

		if name.first == "the"
			name.first.capitalize!
		end

		@title = name.join(" ")

	end
end
