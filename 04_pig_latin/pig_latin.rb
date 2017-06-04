#write your code here
def translate phrase
  words = phrase.split(' ')
  sentence = ""
  words.each do |w|
    sentence += trans(w) + " "
  end
  sentence[0...sentence.length - 1]
end

def trans word
  first_letter = word[0]
  if !is_cons?(first_letter)
    translation = word + "ay"
  elsif is_cons?(word[0]) && is_cons?(word[1]) && is_cons?(word[2]) ||
        (is_cons?(word[0]) && word[1...3] == "qu")
    translation = word[3...word.length] + word[0...3] + "ay"
  elsif word[0...2] == "qu" || (is_cons?(word[0]) && is_cons?(word[1]))
    translation = word[2...word.length] + word[0...2] + "ay"
  else
    translation = word[1...word.length] + word[0] + "ay"
  end
  return translation
end

def is_cons? letter
  if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
    return false
  else
    return true
  end
end
