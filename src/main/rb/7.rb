require 'pp'
nth = 10001

n = 0
i = 1
primes = []
while n < nth
	sqrt = Math.sqrt i
	prime = true
	primes.each do |p|
		next if p == 1
		break if p > sqrt
		if i % p == 0
			prime = false
			break
		end
	end
	if prime
		n += 1
		primes << i
	end
	i += 2
end

puts primes.last