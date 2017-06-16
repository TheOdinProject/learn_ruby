def translate sentence
	vowels = 'a e i o u y'
	translation = []
	words = sentence.split
	words.each do |word|

		if vowels.include? word[0]
			translation.push(word + 'ay')
		elsif 'qu QU Qu'.include? word[0..1] and vowels.include? word[2]
			translation.push(word[2..-1] + word[0..1] + 'ay')
		elsif vowels.include? word[1]
			translation.push(word[1..-1] + word[0] + 'ay')
		elsif 'qu QU Qu'.include? word[1..2]
			translation.push(word[3..-1] + word[0..2] + 'ay')
		elsif vowels.include? word[2]
			translation.push(word[2..-1] + word[0..1] + 'ay')
		else
			translation.push(word[3..-1] + word[0..2] + 'ay')
    end
  end
translation.join(' ')
end
