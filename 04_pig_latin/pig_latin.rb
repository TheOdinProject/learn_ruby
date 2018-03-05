
def translate(input)
  result = []
  input.split(/\s/).each do |word|
    consonant_test = /^(qu|[^aeiou])+/
    match = word.match(consonant_test)
    if match
      # handle words that begin with consonants
      extracted = match[0]
      result << "#{word.gsub(extracted, '')}#{extracted}ay"
    else
      # handle words tht begin with vowels
      result << "#{word}ay"
    end
  end

  result.join(" ")
end
