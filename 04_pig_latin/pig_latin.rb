#write your code here

def translate(sentence)
	words = sentence.split(' ')
	translated = words.collect do |x|
		translate_word(x)
	end
	translated.join(" ")
end

def translate_word(word)
	letters = []
	word.each_char do |x|
		letters << x
	end
	if ['.',',',';','?','!'].include? (letters[-1])
		punc = letters.pop
	end
	index = 0
	letters.each do |x|
		if ['a', 'e', 'i','o'].include? x
			index = letters.find_index(x)
			break
		end
	end

	piglat = letters[index..-1] + letters[0...index]
	if letters[0] == letters[0].upcase
		piglat.join.capitalize + 'ay' + punc.to_s
	else
		piglat.join + 'ay' + punc.to_s
	end
end

p translate("what nerds, suzy?") 
=begin
This actually doesn't work properly because my solution for
treating qu as a unit involved removing u from the vowels! So
even though it passes all the tests, if I wanted qu to be treated as a unit, I
probably need to avoid iterating over each letter. (Or maybe remove qu at the
same time that I removed the punctuation, and then add it back later.)

Also, it's clear my code wouldn't deal with hyphens very well, nor emdashes.
=end