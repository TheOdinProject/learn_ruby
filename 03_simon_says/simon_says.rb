#write your code here
def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat phrase, reps=2
  repeated_phrase = "#{phrase}"
  (reps - 1).times do
    repeated_phrase += " #{phrase}"
  end
  repeated_phrase
end

def start_of_word word, letters
  word[0...letters]
end

def first_word phrase
  words = phrase.split(' ')
  words[0]
end

def titleize phrase
  words = phrase.split(' ')
  title = ""
  iter = 1
  words.each do |w|
    if iter == 1 || (w != "and" && w != "the" && w != "over")
      w.capitalize!
    end
    title += w
    title += " "
    iter += 1
  end
  return title[0...title.length-1]
end
