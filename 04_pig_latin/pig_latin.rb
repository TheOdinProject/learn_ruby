#write your code here
def translate(arr)
    vowels = %w{a e i o u y}
    consonants = %w{b c d f g h j k l m n p q r s t v w x y z}

    a = arr.split.map do |word| 
        if vowels.include?(word[0])
          word + "ay"
        elsif word[0..1] == "qu"
          word[2..-1] + "quay"
        elsif word[0..2] == "sch"
          word[3..-1] + "schay"
        elsif word[0..2] == "squ"
          word[3..-1] + "squay"
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
          word[3..-1] + word[0..2] + "ay"
        elsif consonants.include?(word[0]) && consonants.include?(word[1])
          word[2..-1] + word[0..1] + "ay"
        elsif consonants.include?(word[0])
          word[1..-1] + word[0] + "ay"
        end
    end

    a.join(" ")
end