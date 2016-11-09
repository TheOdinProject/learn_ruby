def translate(str)
  pig_latin = []                  # empty array to join the split up str
  vowel = ["a","e","i","o","u"]   # array of vowels
  arr = str.split(" ")            # split the string parameter

  # go through each array indices
  arr.each do |word|

    # for each indices of there is no vowel continue until true
    while vowel.include?(word[0].downcase) == false
      # if word's first and second index have "qu"
      if word[0..1] == "qu"
        # cut out indices 0 - 1 and add them to end
        word = word[2..-1] + word[0..1]
      else
        # cut out first indices and add to end
        word = word[1..-1] + word[0]
      end
    end

    word = word + "ay"   # ad "ay" to end of word
    pig_latin.push(word) # push word into pig_latin array

  end

  pig_latin.join(" ") # join array of strings into string

end
