#write your code here

def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, t=2)
  (Array.new(t) { input }).join(' ')
end

def start_of_word(input, t=1)
  input[0,t]
end

def first_word(input)
  input.split(' ')[0]
end

def titleize(input)
  little_words = [ "over", "and", "the" ]
  result = []
  input.split(/\s/).each_with_index do |word, index|
    len = word.length
    if(little_words.include?(word) && index != 0)
      result << word
    else
      result << word[0].upcase + word[1..len]
    end
  end

  result.join(" ")
end
