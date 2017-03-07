#write your code here

def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 2)
	arr = Array.new
	fin_string = ""
	for i in 1..num
		fin_string = "#{fin_string} #{string}"
	end
	return fin_string[1..-1]
end

def start_of_word(string, substr)
	string[0..substr - 1]
end

def first_word(string)
	string.partition(" ").first
end

def titleize(string)
	ignore_words = %w{and over the}
	string.split.each_with_index.map{|word, index| ignore_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
	#string.split.map(&:capitalize).join(' ')
end
