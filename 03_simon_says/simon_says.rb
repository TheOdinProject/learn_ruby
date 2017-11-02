#write your code here
def echo (input)
  input
end

def shout (input)
  input.upcase
end

def repeat (input, arg2="2")
  input = input + " "
  output = input*arg2.to_i
  output.chop
end

def start_of_word (input, position)
  n = position-1
  ouput = input[0..n]
end

def first_word (input)
  output = input.split(" ")
  output[0]
end

def titleize (input)
  array = input.split(" ")
  i = 0
  string = ()
  while i <array.length #2
    if array[i] != "and" && array[i] != "the" && array[i] != "over"
      array[i] = array[i].capitalize
      output = array.join(" ")
      i += 1
    else
    i += 1
    end
  end
output[0] = output[0].capitalize
output
end
