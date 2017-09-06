
def translate(word)
		n = word.length
		if word.include?(" ")
			puts "it include more than two words"
			word = word.split
			word.map! do |a|
						n = a.length

						vowels = ["a","e","u","i","o"]

						if vowels.include?(a[0])
						a = a + "ay"
						elsif vowels.include?(a[0] && a[1]) == false
						a = a[2...n] + a[0] + a[1] + "ay"
						else
						a = a[1...n] + a[0] + "ay"
						end
			end
			word = word.join(" ")
		
		else

		n = word.length

		vowels = ["a","e","u","i","o"]

		if vowels.include?(word[0])
			word = word + "ay"
		elsif vowels.include?(word[0] && word[1]) == false
			word = word[2...n] + word[0] + word[1] + "ay"
		else
			word = word[1...n] + word[0] + "ay"
		end
	# if word[0] == "b" or "c"
	# 	word = word[1...n] + "ay"
	# end
		end

end
