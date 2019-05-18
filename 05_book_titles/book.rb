class Book

  attr_reader:title

  def title= title_string
    exceptions = ['the','and','in','a','an','of']
    @title = title_string.split(" ").map.with_index{|word,index| (index > 0  and exceptions.include?(word))? word : word.capitalize}.join(" ")
  end
end
