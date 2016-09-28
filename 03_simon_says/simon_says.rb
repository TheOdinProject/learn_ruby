#write your code here
def echo(w)
	w
end

def shout(w)
	w.upcase
end

def repeat(w,n=2)
	ans = []
	n.times do 
		ans << w
	end
	ans.join(" ")
end

def start_of_word(s,n)
	s[0...n]
end

def first_word(s)
	s.split()[0]
end

def titleize(s)
	little_words = ["and","as","at","but","buy","even","for","from","if","only","in","into","like","near","nor","off","on","once","onto","or","of","over","past","so","that","than","that","the","till","to","up","upon","with", "when", "yet"]
	s.split().each_with_index { |w,i|
		puts i
		if !little_words.include?(w) || i == 0
			w.capitalize!
		else
			w
		end
	}.join(" ")
end

