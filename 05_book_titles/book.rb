#write your code here
class Book
  attr_accessor :title

  def title
    splitted = @title.split

    skipped_words = ['the', 'a', 'an', 'and', 'in', 'of']
    
    splitted.each do |word|
      if word != 'and' && word != 'in' && word != 'the' && word != 'of' && word != 'a' && word != 'an'
        word.capitalize!
      end
    end

    splitted[0].capitalize!

    splitted.join(" ")
  end
  
end