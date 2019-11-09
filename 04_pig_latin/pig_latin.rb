def translate str
    vowels = ['a','e','o','u','i']
    phoneme = ['qu']
    if str.split.length == 1
        if phoneme.include? str[1..2]
            str.split("").rotate(3).join() + 'ay'
        elsif phoneme.include? str[0..1]
            str.split("").rotate(2).join() + 'ay'
        elsif vowels.include? str[0]
            str + 'ay'
        elsif !vowels.include? str[0] and !vowels.include? str[1] and !vowels.include? str[2]
            str.split("").rotate(3).join + 'ay'
        elsif !vowels.include? str[0] and !vowels.include? str[1]
            str.split("").rotate(2).join + 'ay'
        elsif !vowels.include? str[0]
            str.split("").rotate(1).join + 'ay'
        end
    elsif str.split.length > 1
        str.split.map{|str|
            if phoneme.include? str[0..1]
                str.split("").rotate(2).join() + 'ay'
            elsif vowels.include? str[0]
                str + 'ay'
            elsif !vowels.include? str[0] and !vowels.include? str[1] and !vowels.include? str[2]
                str.split("").rotate(3).join() + 'ay'
            elsif !vowels.include? str[0] and !vowels.include? str[1]
                str.split("").rotate(2).join() + 'ay'
            elsif !vowels.include? str[0]
                str.split("").rotate(1).join() + 'ay'
            end}.join(" ")
    end
end



