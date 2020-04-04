#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, amount = 1)
  if amount == 1
    "#{word} #{word}"
  else
    arr = []
    amount.times do |i|
      arr << word
    end
    arr = arr.join(" ")
  end
end

def start_of_word(word, characters)
  word[0..characters-1]
end

def first_word(word)
  word.split[0]
end

def titleize(word)
  arrayed = word.split
  arrayed[0].capitalize!
  arrayed.each do |el|
    if el != "the" && el != "and" && el != "over"
      el.capitalize!
    end
  end
  arrayed.join(" ")
end