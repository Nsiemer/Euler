# Find the difference between the sum of the squares of the first one hundred natural numbers 
# and the square of the sum.

ary1 = []
for i in 1..100
	ary1.push(i)
end
ary2 = ary1
# First squares each number then finds the sum via inject
sum_of_squares = ary1.collect{|x| x ** 2}.inject(0){|sum, item| sum + item}
# only finds the sum 
square_of_sum = ary2.inject(0){|sum, item| sum + item}
# BOOM. This one's tough keep up with, but ary2 sum is squared AND subtracted from.
puts (square_of_sum ** 2) - sum_of_squares