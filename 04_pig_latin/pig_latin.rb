#write your code here
def translate(string)
    words = string.split(' ')
    ay = 'ay'
    vowels = ['a', 'e', 'i', 'o', 'u']
    init_digraphs = ['br', 'ch', 'kn', 'ph', 'qu', 'sh', 'th', 'wh', 'wr']
    init_trigraphs = ['sch', 'scr', 'shr', 'spl', 'spr', 'squ', 'str', 'thr']
    
    words.map { |word|
        if vowels.include?(word[0])
            then word = word + ay
        elsif init_trigraphs.include?(word[(0..2)])
            then word = word[(3..-1)]+word[(0..2)]+ay
        elsif init_digraphs.include?(word[(0..1)])
            then word = word[(2..-1)]+word[(0..1)]+ay
        else
            word[(1..-1)]+word[0]+ay
        end
    }.join(' ')

end