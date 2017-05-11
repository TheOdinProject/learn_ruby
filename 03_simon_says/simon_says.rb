# write your code here

def echo(n)
  n
end

def shout(n)
  n.upcase
end

def repeat(text, n = 2)
  ("#{text} " * n).strip
end

def start_of_word(text, n)
  text.slice(0, n)
end

def first_word(text)
  array = text.split(' ')
  array[0]
end

def titleize(text)
  text.capitalize! # capitalize the first word in case it is part of the no words array
  words_no_cap = %w[and or the over to the a but]
  phrase = text.split(' ').map do |word|
    if words_no_cap.include?(word)
      word
    else
      word.capitalize
    end
  end.join(' ') # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase # returns the phrase with all the excluded words
end
