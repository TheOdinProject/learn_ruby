
def translate(word)
	n = word.length
	word = word.split
	

	word.map! do |word|
		n = word.length

		vowels = ["a","e","i","o"]
		qu = 'qu'
		consonants = [qu, "w", "r", "t", "p", "s", "d", "f", "g", "h", "k", "l", "z", "x", "c", "v", "b", "n", "m"] 

		if vowels.include?(word[0]) #   translates a word beginning with a vowel
			word = word + "ay"

		elsif consonants.include?(word[0]) && vowels.include?(word[1])

			word = word[1...n] + word[0] + "ay" # translates a word beginning with a consonant

		elsif consonants.include?(word[0...1]) && vowels.include?(word[2]) # translates a word beginning with two consonants
			
			puts 'cos'
				word = word[2...n] + word[0] + word[1] + "ay"

		elsif consonants.include?(word[0] && word[1] && word[2]) && vowels.include?(word[3]) # translates a word beginning with three consonants
			word = word[3...n] + word[0] + word[1] + word[2] + "ay"

		elsif word.include?(qu) 
			z = word.index(qu)+1
			y = n - z
			if consonants.include?(word[0])
				word = word[z+1...n] + word[0] + word[z-1] + word[z] + "ay"
			else
				word = word[z+1...n] + word[z-1] + word[z] + "ay"
			end
		end


	end
	word = word.join(" ")

end

puts translate("this should be capitalized")