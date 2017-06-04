#write your code here
def translate(word)
	array_of_words = []
	array_of_words = word.split
	array_of_vowels = ['a','e','i','o','u']
	temp_array = []
	#array_of_temp_consonants = []
	pig_latin = 'ay'
	count = 0
	result = ''
	
	#iterate to every word 
	while count < array_of_words.length
		current_word = array_of_words[count]
		searching = true
		array_of_temp_consonants = []

		while searching
			x = 0
			while x < current_word.length 
				y = 0
				found = false
				while y < array_of_vowels.length
					if(current_word[x] == array_of_vowels[y])
						if(current_word[x] == 'u' and current_word[x-1] == 'q')
							break
						end
						found = true
					end

					y = y + 1
				end
				if(found)
					temp_word = current_word[x..current_word.length]
					searching = false
					break
				else
					array_of_temp_consonants.push(current_word[x])
				end
				x = x + 1
			end
		end

		#adds the constants to a string
		temp_cont_string = ''
		for z in 0..array_of_temp_consonants.length - 1
			temp_cont_string = temp_cont_string + array_of_temp_consonants[z]
		end

		result = temp_word + temp_cont_string + pig_latin 
		
		#checks if capitalize
		have_upcase = false
		if result =~ /[A-Z]/
  			have_upcase = true
		end

		if(have_upcase)
			result = result.capitalize
		end

		#checks for punctuation marks
		if result =~ /[[:punct:]]/
			result = result.tr('!','')
			result = result + '!'
		end

		temp_array.push(result)
		count = count + 1
	end


	
	iterator = 0
	string_of_words = ''
	while iterator < temp_array.length

		string_of_words = string_of_words + temp_array[iterator] + ' '
		iterator = iterator + 1
	end

	string_of_words = string_of_words[0..(string_of_words.length - 2)]
	return string_of_words

end