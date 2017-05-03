#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  ((word + ' ') * n).strip
end

def start_of_word(word, n)
  i = n-1
  word[0..i]
end

def first_word(words)
  words.split.first
end

def titleize(words)
  title = words.split.map do |word|
  if (('and').include?(word) or ('the').include?(word) or ('over').include?(word))
    word
  else
    word.capitalize
  end
end

title.first.capitalize!
title.join ' '
end

# def titleize(words)
#   array = words.split
#   if array.include?('and')
#     n = array.index('and')
#     first_word.capitalize + ' ' + array[n] + ' ' + last_word.capitalize
#   elsif array.length > 1
#     first_word = array.first
#     last_word = array.last
#     first_word.capitalize + ' ' + last_word.capitalize
#   else
#     words.capitalize
#   end

# end