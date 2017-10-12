# write your code here
def translate(string)
  vowels = %w[a e i o u]
  words = string.split.map do |word|
    if vowels.include?(word[0])
      word + 'ay'
    elsif word.include?('qu')
      idx = word.index(/[aeio]/)
      word[idx, word.length] + word[0, idx] + 'ay'
    else
      idx = word.index(/[aeiou]/)
      word[idx, word.length] + word[0, idx] + 'ay'
    end
  end
  words.join(' ')
end
