# Find the sum of even numbers in the Fibonacci less than 4,000,000

def fibUpTo(max)
	e1, e2 = 1, 1
	while e1 <= max
		yield e1
		e1, e2 = e2, e1 + e2
	end
end

seq_numbers = Array.new
fibUpTo(4_000_000) { |f| seq_numbers.push(f)}

puts seq_numbers.find_all{|item| item % 2 == 0}.inject(0){|sum, item| sum + item}

	