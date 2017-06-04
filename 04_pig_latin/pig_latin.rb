#write your code here

def translate(word)
    vowels = 'aeiou'
    words = word.split

    latin_words = []
    words.map! do |word|
        word.chars.each_with_index do |letter, index|
            if vowels.include?(letter) && letter == 'u'
                latin_words << word[index+1..-1] + word[0..index] + 'ay'
                break
            end
            if vowels.include?(letter)
                latin_words << word[index..-1] + word[0...index] + 'ay'
                break
            end
        end
    end

 p latin_words.join(' ')
end
