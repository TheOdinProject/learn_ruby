def translate(input)
  if input.count(' ') < 1
    translator(input)
  else
    words = input.split(' ')
    words.map! { |text| translator(text) }.join(' ')

  end
end

def translator(text)
  if text.start_with?('a', 'e', 'i', 'o', 'u')
    text << 'ay'
  else
    pos = nil
    %w[a e i o u].each do |vowel|
      pos = text.index(vowel)
      break unless pos.nil?
    end
    if !pos.nil?
      pre = text.partition(text[pos, 1]).first
      text.slice!(pre)
      text << pre + 'ay'
    else
      text << 'ay'
    end
  end
end
