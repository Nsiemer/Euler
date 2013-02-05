# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

x = 2**1000
x.to_s.scan(/\d/).map {|i| i.to_i}
puts "Answer is #{x.to_s.scan(/\d/).map {|i| i.to_i}.inject(){|sum, item| sum + item}}"