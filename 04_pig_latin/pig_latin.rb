def translate(text)
  array = text.split('')
  if array[0] =~ /[aeiou]/
    return array.join('').to_s + 'ay'
  else
    return array.push(array.shift).join('').to_s + 'ay'
  end
end
