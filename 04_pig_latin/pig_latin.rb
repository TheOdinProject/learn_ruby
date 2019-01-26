def translate (words)
  words_array = words.split(" ")
  translated_array = []
  translated_phrase = ""

  words_array.each do |array_word|

    if /[aeiou]/.match(array_word[0])
      translated_word = array_word + "ay"
    elsif "qu".match(array_word[1..2]) && /[bcdfghjklmnpqrstvwxyz]/.match(array_word[0])
      translated_word = array_word.delete(array_word[0..2]) + array_word[0] + array_word[1] + array_word[2] + "ay"
    elsif "qu".match(array_word[0..1]) && /[bcdfghjklmnpqrstvwxyz]/.match(array_word[0])
      translated_word = array_word.delete(array_word[0..1]) + array_word[0] + array_word[1] + "ay"
    elsif /[bcdfghjklmnpqrstvwxyz]/.match(array_word[0]) &&  /[bcdfghjklmnpqrstvwxyz]/.match(array_word[1]) && /[bcdfghjklmnpqrstvwxyz]/.match(array_word[2])
      translated_word = array_word.delete(array_word[0..2]) + array_word[0] + array_word[1] + array_word[2] + "ay"
    elsif /[bcdfghjklmnpqrstvwxyz]/.match(array_word[0]) &&  /[bcdfghjklmnpqrstvwxyz]/.match(array_word[1])
      translated_word = array_word.delete(array_word[0..1]) + array_word[0] + array_word[1] + "ay"
    elsif /[bcdfghjklmnpqrstvwxyz]/.match(array_word[0])
      translated_word = array_word.delete(array_word[0]) + array_word[0] + "ay"
    end
    translated_array= translated_array << translated_word
    translated_phrase = translated_array.join(" ")
  end
  return translated_phrase
end


