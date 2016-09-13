#write your code here

# def ftoc(num)
# 	if num == 32
# 		0
# 	elsif num == 212
# 		100
# 	elsif num == 98.6
# 		37
# 	end
# end

def ftoc(num)
	f = (num - 32) / 1.8
	f.round
end

def ctof(num)
	f = num * 1.8 + 32
	f
end