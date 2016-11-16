class Book
# write your code here
	attr_reader :title

	def title=(name)
		var = name.split
		var[0] = var[0].capitalize
		dismiss = ["a","an","and","be","in","of","for","over","the"];
		var[1..-1].each{ |a| 
			if dismiss.include? (a)
				a 
			else
				a.capitalize!
			end
		}
		@title = var.join(" ")
	end
end

