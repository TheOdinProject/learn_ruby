#write your code here

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word,x=2)
  str = "#{word} #{word}"
  if x > 2
    str << (" #{word}") * (x - 2)
    str
  else
    str
  end
end

def start_of_word(word,letters)
  word[0,(letters.to_i)]
end

def first_word(string)
  string.split(" ").first
end

def titleize(title)
  small_words = %w(a of the and over)
  string = title.downcase.split(" ")
  fixed_title = []

  string.each_with_index do |word, index|
    if index == 0 || !small_words.include?(word)
      fixed_title << word.capitalize
    else
      fixed_title << word
    end
  end
  return fixed_title.join(" ")
end
