#write your code here
def echo word
  word
end

def shout word
  word.upcase
end

def repeat(word, number = 2)
  ([word]*number).join(" ")
end

def start_of_word(word, pos)
  word[0..pos-1]
end

def first_word(sentence)
  return sentence.scan(/\w+/)[0]
end

def titleize (string)
  result = string.split(' ')
if (result.length == 1)
result[0].capitalize

else

i = 0
while i < result.length
    if result[i] != "and" && result[i] != "over" && result[i] != "the" || result[i] == result[0]
    result[i] = result[i].capitalize
    end
    i += 1
end
result = result.join(" ")

result
end
end
