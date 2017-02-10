#write your code here

def translate(string)
	words = string.split(' ')
	vowels = ['a','e','i','u','o']
	for i in 0..words.length - 1
		word = words[i]
		chars = word.split""
		hash = Hash[chars.map.with_index.to_a]
		if hash['q'] and hash['u'] and hash['u'] == hash['q']+1
			words[i] = "#{word[hash['u']+1..word.length]}#{word[0..hash['u']]}ay"
		elsif vowels.include? word[0]
			words[i] = "#{word}ay"
		elsif ['qu'].include?word[0..1]# and ['u'].include?word[1]
			words[i] = "#{word[2..word.length]}#{word[0..1]}ay"
		elsif vowels.include? word[1]
			words[i] = "#{word[1..word.length]}#{word[0..0]}ay"
		else
			if vowels.include? word[2]
				words[i] = "#{word[2..word.length]}#{word[0..1]}ay"
			else
				words[i] = "#{word[3..word.length]}#{word[0..2]}ay"
			end
		end
	end
	return words.join(" ")
end

translate("quiet")