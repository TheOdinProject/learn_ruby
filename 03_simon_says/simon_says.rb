#write your code here

def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, repeat = 2)
	x = ""
	while repeat > 1
		x = x + word + " "
		repeat -= 1
	end
	x += word
end

def start_of_word(word, letters)
	word[0..(letters-1)]
end

def first_word(sentence)
	sentence.split[0]
end

# I'm sure there is a WAAAAAY better way to do this!!!
def titleize(sentence)
	words = sentence.split
	ctr = 0
	new_sentence = ""
	words.each do |x|
		if ctr == 0
			x.capitalize!
		# maybe make this list an array, cos' should include a, but, in, who, when, where, why, ...
		elsif x != "and" && x != "over" && x != "the"
			x.capitalize!
		end
		ctr += 1
	end
	words.each do |x|
		new_sentence = new_sentence + x + " "
	end
	new_sentence = new_sentence[0..-2]
end

# puts titleize("the bridge over the river kwai")