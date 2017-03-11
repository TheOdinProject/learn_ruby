def translate(word)
	word.split(" ").map { |w| translateOneWord(w) }.join(" ")
	
end


def translateOneWord(w)
	vowels = %w[a e i o u]

	if vowels.include?(w[0])
		return w + "ay"
	elsif (!vowels.include?(w[0]) && !vowels.include?(w[1]) && !vowels.include?(w[2])) || (!vowels.include?(w[0]) && w[1..2] == "qu")
		return w[3..-1] + w[0..2] + "ay"
					
	elsif !vowels.include?(w[0]) && !vowels.include?(w[1]) || w[0..1] == "qu"
		return w[2..-1] + w[0..1] + "ay"			
	else
		return w[1..-1] + w[0] + "ay"		
	end
end
