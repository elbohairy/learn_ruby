#write your code here

def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	total = 0
	arr.each {|x| total += x}
	total
end

def multiply(a, b, *nums)
	product = a * b
	nums.each {|x| product *= x}
	product
end

def power(a, b)
	a ** b
end

def factorial(x)
	if x <= 1
		1
	else
		product = 1
		x.downto(1) {|num| product *= num}
		product
	end
end