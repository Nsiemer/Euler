# Problem 25
# Fn = Fn-1 + Fn-2, where F1 = 1 and F2 = 1
# The 12th term, F12, is the first term to contain three digits.
# What is the first term in the Fibonacci sequence to contain 1000 digits?

f1, f2 = 1, 1
counter = 0
while f1.to_s.length < 1000
	f1, f2 = f2, f1 + f2
	counter += 1
end

puts "The answer is #{counter + 1}."