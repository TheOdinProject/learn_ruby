#write your code here

def echo str
  return str
end


def shout str
  return str.upcase
end



def repeat (str, n=2)

  result  = str

  (n-1).times do
    result = result + " " + str
  end
  return result
end

p repeat("hello", 3)



def start_of_word (str , n)
  result = ""

  for i in 0..(n-1)
    result = result + str[i]
  end

  return result
end


def first_word str
  arr = str.split
  return arr[0]
end


# def titleize str
#   str.split.map{|word| word.capitalize }.join(" ")
# end

def titleize str
  result = ""
  arr = str.split
  result = arr[0].capitalize + " "
  for i in 1..arr.length-1
    word = arr[i]
    if  word.downcase !="and" and
          word.downcase !="in" and
          word.downcase !="of" and
          word.downcase !="the" and
          word.downcase !="under" and
          word.downcase !="over" and
          word.downcase !="between" and
          word.downcase !="into" and
          word.downcase !="on" and
      result = result + word.capitalize + " "
    else
      result = result + word + " "
    end

  end
  return result.rstrip
end

p titleize "hello and world"
