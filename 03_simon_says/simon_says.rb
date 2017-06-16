def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x, n = 2)
  ([x] * n).join(' ')
end

def start_of_word(x, n = 1)
  x[0...n]
end

def first_word(x)
  x.split[0]
end

def titleize(x)
  words = x.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
