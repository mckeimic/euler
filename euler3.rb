#!/usr/bin/ruby
#Solves Project Euler Problem 3

number = 600851475143
max = Math.sqrt(number)
greatest = 0

def isPrime(num)
   for i in 2..num-1 do
      if num % i == 0 then
         return false
      end
   end
   return true
end

for i in 1..max do
   if number % i == 0 then
      if isPrime(i) then
         if i > greatest then
            greatest = i
         end
      end
   end
end

puts greatest
