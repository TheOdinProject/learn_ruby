def vowel?(str)
  %w[a e i o u].include?(str)
end

def q?(str)
  %w[q].include?(str)
end

def translate_word(word)
  q_index = word.chars.find_index { |c| q?(c) }
  if !q_index.nil?
    if q_index === 0
      leading_consonants = word[0..1]
      rest_of_word = word[2..-1]
      rest_of_word + leading_consonants + 'ay'
    else
      leading_consonants = word[0..q_index + 1]
      rest_of_word = word[q_index + 2..-1]
      rest_of_word + leading_consonants + 'ay'
    end
  else
    first_vowel_index = word.chars.find_index { |c| vowel?(c) }
    if first_vowel_index.zero?
      word + 'ay'
    else
      leading_consonants = word[0..first_vowel_index - 1]
      rest_of_word = word[first_vowel_index..-1]
      rest_of_word + leading_consonants + 'ay'
    end
  end
end

def translate(sentence)
  words = sentence.split(' ')
  words.map { |w| translate_word(w) }.join(' ')
end
