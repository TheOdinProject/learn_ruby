def add (input1,input2)
  input1 + input2
end

def subtract (input1, input2)
  input1 - input2
end

def sum (array)
if array == []
  0
elsif array.length == 1
  array[0]
else
  sum = 0
  i = 0
  while i < array.length
    sum += array[i]
    i += 1
  end
sum
end
end
