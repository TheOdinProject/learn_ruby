def echo (input)
    input
end

def shout (input)
    input.upcase
end

def repeat (input, number = 2)
    output = input
    (number-1).times do |time|
        output += " " + input
    end
    output
end

def start_of_word (input, number)
    input.slice(0, number)
end

def first_word (input)
    input.split(' ').first
end

def titleize (input)
    words = input.split(' ')
    little_words = ['and', 'the', 'over']

    words.each do |word|
        unless little_words.include?(word)
            word.capitalize!
        end
    end
    words.first.capitalize!
    words.join(' ')

end