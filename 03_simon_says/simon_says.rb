#write your code here

def echo word
	"#{word}"
end

def shout word
	"#{word.upcase}"
end

def repeat word, reps = 1
	word = word + " "
	if reps == 1
		word +=word
	else
		word *= reps
	end
	"#{word[0..-2]}"
end

def start_of_word word, num
	"#{word[0..num-1]}"
end

def first_word word
	nword = word.split
	"#{nword[0]}"
end

def titleize word
	var = word.split
	var[0] = var[0].capitalize
	var[1..-1].each{ |a| 
		if a == "and" or a == "the" or a == "over"
			a 
		else
			a.capitalize!
		end
	}
	"#{var.join(" ")}"
end