def echo(something)
  something
end

def shout(something)
  something.upcase! unless something.nil?
end

def repeat(something, times = 2)
  (something.insert(-1, " ") * times).strip
end

def start_of_word(word, length)
  word.slice(0, length)
end

def first_word(phrase)
  phrase.split.first
end

def titleize(something)
  little_words = %w(over the a and an)
  words = something.downcase.split
  words.map! { |word| (little_words.include? word) ? word : word.capitalize }
  words.first.capitalize!
  words.join(" ")
end