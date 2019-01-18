#write your code here
LOWERCASE = ['and', 'over', 'the']
def  echo smth
    smth
end

def shout smth
    smth.upcase
end

def repeat smth, n = 2
    ([smth] * n).join(" ")
end

def start_of_word smth, x
    smth[0...x]
end

def first_word smth
    smth.split.first
end

def titleize (w)
    t = w.split.map { |x| 
	LOWERCASE.include?(x) ? x : x.capitalize }
	t.first.capitalize!
	t.join(' ')

    
end