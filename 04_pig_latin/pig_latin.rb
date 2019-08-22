def translate(word)
	vowels = ['a', 'e', 'i', 'o', 'u']
	returned_words = []
	split_words = word.split(' ')
	for word in split_words
		puts "Testing word #{word}."
		returned_words << (pig_latinize(word.rstrip, vowels))
	end
	returned_words.join(' ')
end

def pig_latinize(word, vowels)
	phoneme_pairs = ['qu']
	if phoneme_pairs.include? word[0..1]
		words = word.scan(/(.)/)
		2.times { push_word(words) }
		word = words.join('')
	elsif ((phoneme_pairs.include? word[1..2]) && (! vowels.include? word[0]))
		words = word.scan(/(.)/)
		3.times { push_word(words) }
		word = words.join('')
	else
		while ! vowels.include? word[0]
			words = word.scan(/(.)/)
			push_word(words)
			word = words.join('')
		end
	end
	word + 'ay'
end
def push_word(words)
	words.push(words[0])
	words.shift
end
