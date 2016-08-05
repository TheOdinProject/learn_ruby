def translate(someString)
	words = someString.split
	pigLatin = []

	words.each do |word|
		firstLetter = word[0].downcase

		case firstLetter
		when 'a','e','i','o','u'
			pigLatin.push(word + 'ay')
		else
			word.gsub!("qu", '*')
			index = word.downcase.index(/[aeiou]/)
			firstPart = word[0..index-1]
			word = ( word[index..-1]+firstPart+"ay" )
			word.gsub!('*', "qu") 
			pigLatin.push(word)
		end
	end
	
	pigLatin.join(" ")
end