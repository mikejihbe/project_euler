# based on 7, some different start criteria

sum = 2
i = 3
primes = [2]
while i < 2000000
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
		sum += i
		primes << i
	end
	i += 2
end

puts sum