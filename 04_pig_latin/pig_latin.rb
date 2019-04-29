def translate(str)
    vowels = ['a','e','i','o','u']
    translate = []
    count = 0
    
    translated = str.split(" ").map {|word|
       
        if vowels.include?(word[0])
           translate << word + 'ay'
        
        else 
           append = ''
           chars = word.split('')
           chars.each { |c|

            if chars[count + 1] == 'q' || chars[count] == 'q'
                if chars[count] == 'q' && chars[count+1] == 'u' 
                    letters = 'qu'
                    word = word.gsub!('q', '')
                    word = word.gsub!('u', '')
                    word = word + letters + "ay"
                    translate << word
                    break
                else
                    letters = 'qu'
                    const = chars[count]
                    word = word.gsub!(const, '')
                    word = word.gsub!('q', '')
                    word = word.gsub!('u', '')
                    word = word + const + letters + "ay"
                    translate << word
                    break

                end
            elsif !vowels.include?(c)   
                word = word.gsub!(c, '')
                append += c   
            elsif vowels.include?(c)
                translate << word + append + 'ay'
                break
               
            end
            }
        end
        }
        count += 1
        translate.join(' ')
        
    end


