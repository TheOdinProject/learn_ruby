def translate(string)
  string.split(" ").map do |word|
    word = word.gsub("qu", " ")
    word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
    word.gsub(" ", "qu")
  end.join(' ')
end