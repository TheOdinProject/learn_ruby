class Book
  attr_reader :title
  def title=(x)
	little_words = %w{a an and the in of}	
	x.capitalize! #Needed to capitalize words at the beginning of a title
	my_array = x.split
	my_array.each do |i|
		if little_words.include? i 
			i
		else 
			i.capitalize!
		end    
	end
  @title = my_array.join (' ')
  end
end


