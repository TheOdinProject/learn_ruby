#write your code here
def echo(msg)
  msg
end

def shout(msg)
  echo(msg).upcase
end

def repeat(msg,number_repeat = 2 )
  r = []
  while number_repeat.nonzero?
    r << msg
    number_repeat-=1
  end
 r.join(" ")
end


def start_of_word(word,n)
  word[0..n-1]
end


def first_word(word)
   word.scan(/\w+\s/)[0].strip
end


def small_word? (word)
    ["and","the","in","over"].include? word
end

def titleize(title)
  words = title.split(" ")
  words[0] = words[0].capitalize ##capitalize first word of the title
  words.map {|word|
     if small_word?(word)
        word
    else
        word.capitalize
    end }.join(" ")
end
