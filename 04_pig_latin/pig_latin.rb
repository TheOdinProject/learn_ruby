def translate (x)	
	vowels = "aeiou"
	output = ''
	my_array = x.split
	my_array.each do |i|
	increment = 0
	vowel_found = false
		string_length = i.length
		until vowel_found == true
			letter = i.slice(increment, 1)
			if vowels.include?(letter) == true
				vowel_found = true
				if letter == "u" && (i.slice(increment - 1, 1) == "q") # If it's qu add one to increment so u goes to the end of the string
					increment = increment + 1
				end
			end
			increment = increment + 1
		end
		letter = i.slice(0, (increment -1)) #to the vowel in a word
		string_remain = i[(increment-1)..string_length] #after the vowel in a word (would be better to delete 'increment' letters at the start of the string
		output = output + string_remain + letter + "ay "
	end
	string_length = output.length - 1
	output = output[0...string_length]
	return output
end
puts translate "quiet"
puts translate "squishy"
puts translate "nuts"
