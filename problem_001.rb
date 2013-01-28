# Euler 1
## find sum of all multiples of 3 and 5 below 1000

def prompt()
	print "> "
end

puts "This will find multiples of 3 and 5 for the range you provide."
puts "What is the range min.?"
prompt
min = gets.chomp.to_i
puts "What is the range max.?"
prompt
max = STDIN.gets.chomp.to_i

range = []
for i in (min..max)
	range.push(i)
end

puts # a blank line
print "Your answer is:"
puts range.find_all{|item| item % 3 == 0 or item % 5 == 0}.inject(-max){|sum, item| sum + item}
