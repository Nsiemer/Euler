# Find the sum of even numbers in the Fibonacci less than 4,000,000

f1, f2 = 1, 1
sequence = Array.new

while f1 < 4_000_000
	f1, f2 = f2, f1 + f2; sequence.push(f1)
end

puts "The answer is #{sequence.find_all{|item| item % 2 == 0}.inject(0){|sum, item| sum + item}}."