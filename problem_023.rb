# Find the sum of all the positive integers which cannot
# be written as the sum of two abundant numbers.
# 28123 == ceiling

@abundants = Array.new
norms = (0..28123).to_a
abundantSums = Array.new

def test(n)
	factors = (1..n).find_all{|x| n % x == 0}
	sum = factors.inject(-n){|sum, item| sum + item}
	if sum.to_i > n
		@abundants.push(n)
	end
end

for i in 1..28123
	test(i)
end

for a in @abundants
	for b in @abundants
		abundantSums.push(a + b)
	end
end

final = norms - abundantSums
puts "The answer is #{final.inject(){|sum, item| sum + item}}"