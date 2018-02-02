def translate(sentence)

	# vowels = %w{a e i o u}
	# This can be improved!!! to only require the lowercase vowels and then do a case insensitive compare
	vowels = %w{A E I O U a e i o u}
	words = sentence.split

	string_to_move = ""
	new_word = ""
	new_sentence = ""

	words.each do |word|
		capitalized = false
		if word[0] != word[0].downcase
			# puts "WORD[0]: #{word[0]}"
			capitalized = true
		end
		while true
			if !vowels.include? word[0]
				string_to_move = string_to_move + word[0]
				word = word[1..-1]
			elsif "u".include? word[0]
				if string_to_move[-1] == "q" || string_to_move[-1] == "Q"
					string_to_move = string_to_move + word[0]
					word = word[1..-1]
				end
			else
				new_word = word + string_to_move + "ay"
				new_word = new_word.capitalize if capitalized == true
				break
			end
		end
		string_to_move = ""
		new_sentence = new_sentence + new_word + " "
	end
	new_sentence = new_sentence[0..-2]
end

# puts translate("I am Tracy")
