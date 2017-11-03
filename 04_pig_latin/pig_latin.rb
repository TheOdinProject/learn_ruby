#write your code here

def translate (input)
output = String(nil)
  input.split.each do |word|

  if word.index(/[aeiou]/) == 0
    output += word + "ay "
  elsif word.include?("I") == true
    output += word + " "
  elsif word.include?("qu") == true
    vowelSpot = word.index("u")
    begining = word[0..vowelSpot]
    output += word[vowelSpot+1..word.length] + begining +'ay '
#cut from the u to begin and put it on the end
  else
    vowelSpot = word.index(/[aeiou]/)
    begining = word[0..vowelSpot-1]
    output += word[vowelSpot..word.length] + begining +'ay '
  end
  end
output.chop
end

puts translate "this is I pig latin"
