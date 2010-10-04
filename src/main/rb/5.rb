
=begin
DIVISIBLE BY  
2: last digit even, 0,2,4,8 - we can increment natural numbers (NN) by 2 finding possibilities
3: sum of digits divis by 3 
4: 
5: last digit 0 or 5, combined with 2 we can increment NN by 10
6:
7:
8:
9:
10: last digit == 0
11:
12: given by 3 and 4
13:
14: given by 2 and 7
15: given by 3 and 5
16: given by 
17:
18:
19:
20: second to last digit must be even, we can increment by 20

=end
# Primes to check
divisors = [
  #1 - # Implied
	#2 - # Given by 20
	#3 - # Given by 12
	#4 - # Given by 12
	#5 - # Given by 20
	#6 - # Covered if 2 and 3 are covered
	#7 - # Covered by 14
	8,
	#9 - # Covered by 18
	#10 - # Covered by 20
	11,
	12,
	13,
	14,
	# 15 - Covered if 3 and 5 are covered
	16,
	17 ,
	18,
	19,
	20]


n = 0
begin
	n += 20
	remainders = divisors.map {|d| n % d }
	sum = remainders.inject(0){|s,r| s+= r}
	puts '.' if n % 1000000 == 0
end while sum != 0
puts "="*10
puts n