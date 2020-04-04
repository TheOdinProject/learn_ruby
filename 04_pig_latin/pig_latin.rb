def translate(sentence)
  words = sentence.scan(/[\w'-]+|[[:punct:]]+/)
  modified_arr = []
  capitalized = false

  words.each do |word|
    word.start_with?(/[A-Z]/) ? capitalized = true: capitalized = false
    if word.start_with?(/qu/)
      word = word[2..-1] + word[0..1]
      # modified_arr << word + "ay"
    elsif !word.start_with?(/[aeiouy]/)
      until word.start_with?(/[aeiouy]/) do
        if word.start_with?(/qu/)
          word = word[2..-1] + word[0..1]
        else
          word = word[1..-1] + word[0]
        end
      end
      # modified_arr << word+ "ay"
    else
      # modified_arr << word + "ay"
    end

    if capitalized
      modified_arr << word.capitalize! + "ay"
    else
      modified_arr << word.downcase + "ay"
    end
  end  

  return modified_arr.join(" ")



end