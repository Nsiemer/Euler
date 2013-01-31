# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

for a in (1..1000)
	 a if a % 2 == 0 # One must be even ##These lines don't seem to be taking...
	 for b in (1..1000)
	 b if b % 2 != 0 # One must be odd
	 	for c in (1..1000)
	 	c if c % 4 == 0 # The squared result must be a modulo of 4
	 		if a**2 + b**2 == c**2
	 	#	puts "#{a}, #{b}, and #{c}."
	 				if a + b + c == 1000
	 					puts "#{a}, #{b}, and #{c} work!"
	 					puts "The answer is #{a * b * c}" 
	 					# put a loop break in here
	 				end
	 	end
	 end
	end
end
puts "all done"