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

def titleize(word)
	small_words = ['the','a','an','is','in','at','of','and','over']
	word.capitalize.split.map {|idx| small_words.include?(idx)? idx :idx.capitalize}.join' '
end