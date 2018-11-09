def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word,a=2)
    ([word]*a).join(' ')
end

def start_of_word(word,a=1)
    word[0,a]
end

def first_word(word)
    word.split.first
end

def titleize(str)
	arr = str.split(' ')
	result = []
	i = 0
	arr.each do |item|
		if i == 0 || i == (arr.length - 1)  || item.length > 4
			result.push(item.capitalize)
		else
			result.push(item)
		end
		i += 1
	end
	result.join(" ")
end