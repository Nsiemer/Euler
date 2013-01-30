x = 1

def statement(i)
	for p in 1..20
		puts i, p
		i % p == 0
	end
end  

until statement(x) == true
	x += 1
end
puts x