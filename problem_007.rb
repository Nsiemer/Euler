# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13 
# we can see that the 6th prime is 13.
# What is the 10 001st prime number?
back_then = Time.now
primes = []
i = 2
def prime_factors(n)
  return [] if n == 1
  factor = (2..n).find {|x| n % x == 0}
  [factor] + prime_factors(n / factor)
end

while primes.uniq.length <= 10000
	puts prime_factors(i).max
	primes.push(prime_factors(i).last)
	i += i + 1
end
puts "10001th prime is #{primes.uniq.last}"
puts "This took #{Time.now - back_then} seconds to solve."