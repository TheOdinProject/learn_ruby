#write your code here
def translate word
	piglatin = []
	vowels = ["A","E","I","O","U","a","e","i","o","u"]
	puncts = ['.','!','?',',',':',";"]

	#checks for punctuations
	if puncts.include? (word[-1])
		last = word[-1]
		word = word [0..-2]
	else
		last = ""
	end

	var = word. split(" ")  	
  	var.each do |value|
	    while !vowels.include? (value[0])
	      	if value[0..1] == 'qu' or value[0..1] == "Qu"
	        	value = value[2..-1] + value[0..1]
	      	else
	        	value = value[1..-1] + value[0..0]
	      	end
	    end
	    value = value + 'ay' 
	    piglatin.push value
	end
	# rejoins the phrase with it's proper ending; punctuation or not
    piglatin.join(" ") + last
end
