class Book
# write your code here
	def title=(value)
		@title = value
	end

	def title
		words = @title.split(' ')
		cap_first = words[0].capitalize
		@title = words[1..-1].map do |x| 
			if ['and','but'].include? x
				x
			elsif ['in','of'].include? x
				x
			elsif ['the', 'a', 'an'].include? x
				x
			else
				x.capitalize
			end
		end
		@title.insert(0, cap_first)
		@title.join(' ')
	end
end
