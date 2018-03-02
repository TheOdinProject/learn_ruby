
def translate(input)
  result = []
  input.split(/\s/).each do |word|
    match = word.match(/^[^aeiou|qu]+/)
    if match
      extracted = match[0]
      result << "#{word.gsub(extracted, '')}#{extracted}ay"
    else
      result << "#{word}ay"
    end
  end

  result.join(" ")
end
