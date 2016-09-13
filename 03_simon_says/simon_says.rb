#write your code here
def echo(sentence)
	sentence
end

def shout(sentence)
	sentence.upcase
end

def repeat(sentence, num=2)
	((sentence + " ")* num).chop
end

def start_of_word(word, num=1)
	word.slice(0, num)
end

def first_word(sentence)
	words = sentence.split(" ")
	words[0]
end

def titleize(sentence)
	words = sentence.split(" ")
	first = words.first.capitalize 
=begin
	Something like this doesn't work--
	if words.index(x) == 0
		x.capitalize
	--because if x is repeated later in the array (e.g., the is the first
	word and the 4th), this condition still passes.

	Therefore we remove the first word before the iterator.
=end
	rest = words[1..-1]
	capped = rest.map do |x|
		if ['the', 'and', 'but', 'over'].include?(x)
			x
		else
			x.capitalize
		end
	end
	capped.insert(0, first)
	capped.join(" ")
end

p titleize("The Bridge over the River Kwai")


