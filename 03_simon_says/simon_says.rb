#write your code here

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word,num=2)
  [word] * num * " "
end

def start_of_word(word,index=1)
  word[0...index]
end

def first_word(words)
  words.split(" ")[0]
end

def titleize(words)
  little = ["and", "the", "or", "over", "to", "a", "but"]
  words.split(" ").map.with_index{|word, index| (index > 0 and little.include?(word)) ? word : word.capitalize}.join(" ")
end
