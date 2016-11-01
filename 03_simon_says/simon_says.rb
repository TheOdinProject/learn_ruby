def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times=0)
  count = 1
  if times == 0
    str + ' ' + str
  else
    answer = str + ' '

    until count == times do
      answer += str + ' '
      count = count + 1
    end
    answer.slice!(-1)
    answer
  end
end

def start_of_word(word, num)
  starter = word.slice(0..num-1)
end

def first_word(str)
  first = str.split.first
end

def titleize(str)
  word_array = str.split(' ')
  word_array.each do |i|
    if i.size > 3
      i.capitalize! unless i == 'over'
    end
  end
  word_array[0].capitalize!
  word_array.join(' ')
end