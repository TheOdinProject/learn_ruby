def translate(phrase)
  words = phrase.split
  words.map! do |word|
    punctuation = get_punctuation(word)
    consonants = get_consonant_sequence(word)
    new_word = word.chomp(punctuation)
                   .slice(consonants.size..-1) << consonants << "ay" << punctuation
    new_word.downcase!.capitalize! if word.is_capitalized?
    new_word
  end

  words.join(" ")
end

def get_punctuation(word)
  punctuations = %w(! . ; : , ?)
  unless (word.nil?)
    word.strip!
    last_char = word[-1].to_s
    if punctuations.include? last_char
      return last_char
    end
  end
  ""
end

def get_consonant_sequence(letters, found = "")
  edge_consonants = %w(qu)
  vowels = %w(a e i o u)

  unless letters.nil?
    edge_consonants.each do |edge_consonant|
      if letters.start_with? edge_consonant
        found << edge_consonant
        return get_consonant_sequence(letters.slice(edge_consonant.size..-1), found)
      end
    end

    unless vowels.include? letters.chr
      found << letters.chr
      return get_consonant_sequence(letters.slice(1..-1), found)
    end
  end

  found
end

class String
  def is_capitalized?
    capitalized = self.capitalize
    (self == capitalized)
  end
end
