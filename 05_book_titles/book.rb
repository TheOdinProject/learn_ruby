class Book
    @@small_word = { conjunctions: ["and","or"] , preposition: ["in","of"] ,article: ["a","the","an"]}


public

def title=(title)
  @title = capitalize(title)
end

def title
  @title
end

private
def capitalize(title)
  title.sub!(/^\w+/){|word| word.capitalize} ##capitalize first word of title
  title.gsub!(/\w+/){|word|  ## capitalize other word
    word.capitalize!  if not is_small_word?(word)
   word}
end

def is_small_word?(word)
  @@small_word.values.any? { |liste|  liste.include? word}
end

end
