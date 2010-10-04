sum_of_squares = (1..100).inject(0) {|s,n| s += n**2}
sum = 100*101/2
square_of_sum = sum**2

puts square_of_sum - sum_of_squares