class Book
  attr_reader :title

  def title=(input)
    @title = capitalize(input)
  end

  private
  def capitalize(string)
    little_words = [ "and", "the", "a", "an", "in", "of" ]
    result = []
    string.split(/\s/).each_with_index do |word, index|
      len = word.length
      if(little_words.include?(word) && index != 0)
        result << word
      else
        result << word[0].upcase + word[1..len]
      end
    end

    result.join(" ")
  end
end
