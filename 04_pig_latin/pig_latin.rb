def translate(words)
	vowels = %w(a e i o u)
	pig_latin = words.split.map do |word|
		if word[0..1].include? ('qu')
			word = word[2..-1] + word[0..1]
		elsif word[1..2].include? ('qu')
			word = word[3..-1] + word[0..2]
		elsif vowels.include?(word[0..0])
			word
		elsif vowels.include?(word[1..1])
			word = word[1..(word.length - 1)] + word[0..0]
		elsif vowels.include?(word[2..2])
			word = word[2..(word.length - 1)] + word[0..1]
		else
			word = word[3..(word.length - 1)] + word[0..2]
		end
		word = word + 'ay'
	end

pig_latin.join ' '
end