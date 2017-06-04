#write your code here
def translate original
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  translation = []

  original.split(" ").each do |word|
    if vowels.include?(word[0])
      translation << (word + 'ay')
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      translation << (word[3..-1] + word[0..2] + 'ay')
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      if word[1..3].include?('qu')
        translation << (word[3..-1] + word[0..2] + 'ay')
      else
        translation << (word[2..-1] + word[0..1] + 'ay')
      end
    elsif consonants.include?(word[0])
      if word[0..2].include?('qu')
        translation << (word[2..-1] + word[0..1] + 'ay')
      else
        translation << (word[1..-1] + word[0] + 'ay')
      end
    else
      translation << word
    end
  end

  translation.join(" ")
end

puts translate "eat apple pie"
