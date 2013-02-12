#!/usr/bin/ruby
#Solves euler 7

term  = 10_001
def nextPrime(num)
   if num % 2 == 0 then
      num -=1
   end
   while true do
      num += 2
      if isPrime(num) then
         return num
      end
   end
end

def isPrime(num)
   for i in 2..Math.sqrt(num) do
      if num % i == 0 then
         return false
      end
   end
   return true
end

primes =[2]

for i in 1..term-1 do
  primes << nextPrime(primes[-1])
end

puts primes[-1]
