def echo reply
    return reply
end

def shout reply
    return reply.upcase
end

def repeat reply, num=2    
    return ([reply] * num).join ' '
end

def start_of_word input, char
    return input[0..(char-1)]
end

def first_word input
    return input.split(' ')[0]  
end

def titleize input
    lowerCase = %w(and in over the of a an)
    return input.capitalize.split.map{|w| lowerCase.include?(w) ? w : w.capitalize}.join(' ')
end

    