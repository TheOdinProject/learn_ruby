def translate word
  p word
  p word.gsub(/(\bqu|\b[^\saeiou]qu|\b[aeiou]\w*|\b[^\saeiou]{1,3}|\b[^\saeiou])(\w*)/, '\\2\\1ay')
end

  



