#write your code here
def translate (str)
    arr = str.split(" ")
    vowels = "aeiou"
    new_arr = []

    arr.each do |word|
        if findVowel(word) == 0
            new_arr << word + "ay"
        elsif word[0..1] == "qu"
            new_arr << word[2..word.length] + word[0..1] + "ay"
        elsif findVowel(word) == 1
            new_arr << word[1..word.length] + word[0] + "ay"
        elsif word[1..2] == "qu"
            new_arr << word[3..word.length] + word[0..2] + "ay"
        elsif findVowel(word) == 2
            new_arr << word[2..word.length] + word[0..1] + "ay"
        elsif findVowel(word) == 3
            new_arr << word[3..word.length] + word[0..2] + "ay"
        end
    end
    new_arr.join(" ")
end


def findVowel (word)
    vowels = "aeiou"
    word.each_char.with_index do |char, index|
        if vowels.include? (char)
            return index
        end
    end
end


    

