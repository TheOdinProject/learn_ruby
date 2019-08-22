def echo(words)
	puts words
	words
end
def shout(words)
	puts words.upcase
	words.upcase
end
def repeat(word, repetitions=2)
	(["#{word}"] * repetitions).join ' '
end
def start_of_word(word, characters)
	word[0..characters-1]
end
def first_word(words)
	returned_words = words.split(' ')
	returned_words[0]
end
def titleize(word)
	little_words = ['and', 'of', 'over', 'the']
	word.capitalize.split.map{ |str| little_words.include?(str) ? str : str.capitalize }.join(' ')
end
