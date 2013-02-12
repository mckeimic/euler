#!/usr/bin/ruby
#Solves Euler 6

a = [*1..100]
sumOfSquares = 0
squareOfSum = 0

for i in a do
   sumOfSquares += i**2
end

tempsum = 0
for i in a do
   tempsum += i
end
squareOfSum = tempsum**2

puts "Sum of Squares: #{sumOfSquares}"
puts "Square of Sum: #{squareOfSum}"
puts "The difference is: #{squareOfSum - sumOfSquares}"
