# In England the currency is made up of pound, £, and pence, p, 
# and there are eight coins in general circulation:
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# How many different ways can £2 be made using any number of coins?

back_then = Time.now

@counter = 0

for i in 0..200 # 1p
	for j in 0..100 # 2p
		for k in 0..40 # 5p
			for l in 0..20 # 10p
				for m in 0..10 # 20p
					for n in 0..4 # 50p
						for o in 0..2 # 1 £
							for p in 0..1 # 2 £
								if (1 * i)+(2 * j)+(5 * k)+(10 * l)+(20 * m)+(50 * n)+(100 * o)+(200 * p) == 200
								# puts "#{i} 1p, #{j} 2p, #{k} 5p, #{l} 10p, #{m} 20p, #{n} 50p, #{o} £1, and #{p} £2"
									@counter = @counter + 1
								end
							end
						end
					end
				end 
			end
		end
	end
end

puts @counter

now = Time.now
total_time = now - back_then
puts "Time to solve was #{total_time} seconds."

# answer = 1_252_594 / 17