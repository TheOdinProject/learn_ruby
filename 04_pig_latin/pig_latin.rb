
def translate(word)
	

	n = word.length
	word = word.split

	word.map! do |word|
		n = word.length

		vowels = ["a","e","u","i","o"]
		qu = 'qu'
		

		if vowels.include?(word[0]) #   translates a word beginning with a vowel
			word = word + "ay"

		elsif word[0..1].include?('qu')
			word = word[2...n] + 'quay'


		elsif vowels.include?(word[0]) == false && vowels.include?(word[1]) == true
			word = word[1...n] + word[0] + "ay" # translates a word beginning with a consonant

		elsif vowels.include?(word[0] && word[1]) == false && vowels.include?(word[2]) == true # translates a word beginning with two consonants
			puts 'zatrzymalo sie'
			word = word[2...n] + word[0] + word[1] + "ay"


		elsif vowels.include?(word[0] && word[1] && word[2]) == false && vowels.include?(word[3]) == true # translates a word beginning with three consonants
			word = word[3...n] + word[0] + word[1] + word[2] + "ay"


			

		end


	end
	word = word.join(" ")

end



# elsif vowels.include?(word[0] && word[1] && word[2]) == false # translates a word beginning with two consonants
# 			word = word[2...n] + word[0] + word[1] + word[2] + "ay"
# 		end