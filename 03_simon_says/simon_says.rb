#write your code here

def echo (word)
  word
end

def shout (word)
  word.upcase!
end

def repeat (word, count=2)
  [word] * count * ' '
end

def start_of_word (word, count)
  word[0..count-1]
end

def first_word (words)
  words.split[0]
end

def titleize (words)
  words = words.capitalize
  small_words = %w(the and over)
  title = words.split
  new_title = []

  title.each { |word|
    if !small_words.include?(word)
      word = word.capitalize
    end
    new_title.push(word)
  }
  new_title.join(' ')
end
