#write your code here

def translate word
  vowels = %w[a e i  o u]
  punctuations = %w[! , . ? ;]

  arr = word.split
  result = ""
  punc = ""


  arr.each do |word|

    if punctuations.include?(word[-1])
      punc = word[-1]
      word = word[0..-2]
    end
    ordway = ""

    if vowels.include?(word[0].downcase)
      ordway =  word + "ay"
    elsif word[0].downcase=="q" and word[1].downcase=="u"
      ordway = word[2..(word.length-1)] + word[0..1] + "ay"
    elsif vowels.include?(word[1].downcase)
      ordway = word[1..(word.length-1)] + word[0] + "ay"
    elsif !vowels.include?(word[0].downcase) and
          word[1].downcase=="q" and word[2].downcase=="u"
      ordway = word[3..(word.length-1)] + word[0..2] + "ay"
    elsif vowels.include?(word[2].downcase)
      ordway = word[2..(word.length-1)] + word[0..1] + "ay"
    elsif vowels.include?(word[3].downcase)
      ordway = word[3..(word.length-1)] + word[0..2] + "ay"
    end

    if word.capitalize == word
      ordway = ordway.capitalize
    end

    result = result + " " + ordway + punc
  end


  return result.lstrip.rstrip
end


p translate("Hello World!")
