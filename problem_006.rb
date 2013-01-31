# Find the difference between the sum of the squares of the first one hundred natural numbers 
# and the square of the sum.

sum_of_squares = (1..100).collect{|x| x ** 2}.inject(0){|sum, item| sum + item}
square_of_sum = (1..100).inject(0){|sum, item| sum + item}
puts (square_of_sum ** 2) - sum_of_squares