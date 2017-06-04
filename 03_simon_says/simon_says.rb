#write your code here
def echo(phrase)
	phrase
end

def shout(words)
	words.upcase
end

def repeat(words,num = 2)
	result = ''
	num.times do
		result = result + words + ' '
	end
	x = result[0..(result.length - 2)]
	return x
end

def start_of_word(word,num)

	word[0..(num - 1)]
end

def first_word(word)
	x = word.split
	return x[0]
end

def titleize(word)
	#word.split.map(&:capitalize).join(' ')
	x = word.split
	i = 0
	sum = ''
	#temp = []
	while i < x.length
		
		#y = x.first.capitalize
		
		if(x[i] == 'of' || x[i] == 'and' || x[i] == 'over' || x[i] == 'the')
			y = x[i]
			#temp.push(y)
		else
			y = x[i].capitalize
			#temp.push(y)
		end
		sum = sum + y + ' '
		i = i + 1
	end

	first = sum[0..0].upcase
	second = sum[1..(sum.length - 2)]

	result = first + second
	return result

end
