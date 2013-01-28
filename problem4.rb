# Problem 4
## A palindromic number reads the same both ways. 
### The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
#### Find the largest palindrome made from the product of two 3-digit numbers.

@ary1 = []
@ary2 = []

def palindrome_check(num)
	s = num.to_s
	if s == s.reverse
		@ary2.push(num)
		return true
	else 
		return false
	end
end

for i in (100..999)
	for j in (100..999)
	k =	i * j
	@ary1.push(k)
	end
end

@ary1.collect{|x| palindrome_check(x)}
@ary2.sort!
puts "#{@ary2.last}"