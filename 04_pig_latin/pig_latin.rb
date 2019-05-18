#write your code here

def translate(words)

  vowels = ['a','e','i','o','u']
  translated_word = ""

  for word in words.split(" ") do
    while not vowels.include?(word[0])
      if word[0] == 'q' and word[1] == 'u'
        word = word [2..-1]
        word += "qu"
      elsif word[0] == 's' and word[1] == 'c' and word[2] == 'h'
        word = word[3..-1]
        word += "sch"
      else
        cur_ch = word[0]
        word = word[1..-1]
        word += cur_ch
      end
      next
    end
    word += "ay"
    translated_word += word + " "
  end
  translated_word.strip()
end
