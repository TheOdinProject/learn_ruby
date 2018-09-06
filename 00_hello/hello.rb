def hello(person = nil)
  if person
    "Hello, #{person}!"
  else
    "Hello!"
  end
end

def greet(person)
  hello(person)
end
