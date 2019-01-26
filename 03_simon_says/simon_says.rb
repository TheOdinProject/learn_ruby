def echo(word)
  return word
end

def shout (word)
  return word.upcase
end

def repeat (word, times = 2)
  return word << (" " + word) * (times - 1)
end

def start_of_word (word, position)
  return word[0, position]
end

def first_word (phrase)
  phrase_array = phrase.split(" ")
  return phrase_array[0]
end

def titleize (phrase)
  phrase.capitalize!
  small_words = ["and", "the", "over"]
  capped_phrase = phrase.split.map! {|word| 
    if small_words.include?(word)
      word
    else
      word.capitalize
    end
  }.join(" ")
  return capped_phrase
end
