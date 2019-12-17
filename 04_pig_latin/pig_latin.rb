#write your code here
def translate(word)
    result = ""

    words = word.split(' ')
    e = 0
    while e < words.length

    if words[e][0].downcase == "a" || words[e][0].downcase == "e" || words[e][0].downcase == "i" || words[e][0].downcase == "o" || words[e][0].downcase == "u"
        words[e] += "ay"
    else

        while words[e][0].downcase != "a" && words[e][0].downcase != "e" && words[e][0].downcase != "i" && words[e][0].downcase != "o" && words[e][0].downcase != "u"
            if words[e][0].downcase == "q" && words[e][1].downcase == "u"
                if words[e][0] == words[e][0].upcase
                    deleted = words[e].slice!(0,2)
                    words[e] += deleted
                    words[e] = words[e].downcase.capitalize
                else
                deleted = words[e].slice!(0,2)
                words[e] += deleted
                end
            else
                if words[e][0] == words[e][0].upcase
                    deleted = words[e].slice!(0,1)
                    words[e] += deleted
                    words[e] = words[e].downcase.capitalize
                else
                    deleted = words[e].slice!(0,1)
                    words[e] += deleted
                end

            end
        end
        words[e] += "ay"
    end
    e += 1
end

    result = words.join(" ")
    result
end
