# Euler 1
## find sum of all multiples of 3 and 5 below 1000

z = (0...1000).find_all{|item| item % 3 == 0 or item % 5 == 0}.inject(0){|sum, item| sum + item}
puts "The answer is #{z}."