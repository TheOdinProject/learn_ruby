class Book
# write your code here

  def title=(str)
    #@title = str.split.map{|word| word.capitalize}.join(" ")

    exceptions = %w[an in and the of between among on with for a to]
    arr = str.split

    # arr.each do |word|
    #   if !exceptions.include?(word.downcase)
    #     word.capitalize!
    #   end
    # end

    arr[0] = arr[0].capitalize

    for i in 1..(arr.length - 1)
      word = arr[i]
        if !exceptions.include?(word.downcase)
          arr[i] = word.capitalize
        end
    end

    @title = arr.join(" ")
  end

  def title
    return @title
  end

end


b = Book.new

b.title = "heaven"

p b.title
