class Book
  attr_reader :title

  def title=(string)
    # split string by spaces into new array
    new_title = string.split(" ")

    # capitalize first letter in new title
    new_title = [new_title[0].capitalize] +
        # run through each word in array
        new_title[1..-1].map do |word|
          # words not to capitalize
          bad_words = %w{a an and the in of}
          # don't capitalize if bad word
          if bad_words.include? word
            word
          # do capitalize if not bad word
          else
            word.capitalize
          end
        end
    # convert array to string
    @title = new_title.join(" ")
  end

end