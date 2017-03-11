def echo(word)
	word
end


def shout(word)
	word.upcase
end


def repeat(word, num = 2)
	((word + " ") * num).strip
	
	#r = ""
	#num.times do 
	#	r += word + " "
	#end
	#r.strip
end


def start_of_word(word,num)
	word[0..num-1]
end


def first_word(word)
	word.split(" ").first		
end


#passes tests but not sure if this function is robust
def titleize(word)
	little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]
	title =word.split.map {|w| little_words.include?(w)? w: w.capitalize!}
	title[0] = title[0].capitalize
	title.join(" ")
end
