def echo(string)
  string 
end

def shout(text)
  text.upcase
end

def repeat(word, n=2)
  ((word + " ") * n).strip!
 
end

def start_of_word(letter, n = 1)
   letter[0,n]
end

def first_word(phrase)
  divide = phrase.split(" ")
  divide.slice(0)
end

def titleize(word)
  word.capitalize!
  words_no_cap = ["and", "over", "the"]
  title = word.split(" ").map {|word|
    if words_no_cap.include?(word)
      word
    else 
      word.capitalize
    end
  }.join(" ")
  title
end

