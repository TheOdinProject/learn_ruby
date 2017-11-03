class Book

  def title=(input)
  output = String(nil)

    input.split.each do |word|

      if  word==("the")||word==("a")||word==("an")||word==("of")||word==("in")||word==("and")
        output += word + " "
      else
        output += word.capitalize + " "
      end
      
    output[0] = output[0].capitalize
    @title = output.chop
    end

  end

  def title
    @title
  end
end
