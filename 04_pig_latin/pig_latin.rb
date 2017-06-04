#write your code here
def translate(s)
	vowels = ["a","e","i","o","u"]
	s.split().map {|w|
		while ((w[0] == 'u' && w[-1] == 'q') || !vowels.include?(w[0]))
			w = w[1..-1] + w[0]
		end
		w += "ay"
	}.join(" ")
end