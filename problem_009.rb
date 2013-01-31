a = (1..998).find_all{|d| d % 2 == 0}
b = (1..998).find_all{|e| e % 2 != 0} 
c = (1..998).find_all{|f| f % 2 != 0}
cut = 1
unless cut == 0
for i in a[1..(a.length)]
	for j in b[1..(b.length)]
 	for k in c[1..(c.length)]
			if i*i + j*j == k*k
				puts "#{i}, #{j}, and #{k} work"
				if i + j + k == 1000
					cut -= 1
					puts "*************** #{i}, #{j}, and #{k} work"
					answer = i * j * k
					puts "The answer is #{answer}"
				## Why doesn't the loop stop!?
				end
			end
		end
	end
end
end
