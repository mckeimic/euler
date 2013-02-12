#!/usr/bin/ruby
#Project Euler 10

limit = 2_000_000
num = 3
primes = [2]

def checkPrime(num, primes)
  for p in primes.select { |x| x <= Math.sqrt(num) } do
    if num % p == 0 then
      return false
    end
  end
  return true
end

while num < limit do
   if checkPrime(num, primes) then
      primes << num
   end
   num += 2
end

sum = primes.inject { |result, element| result + element }
puts "The sum of all primes less than #{limit} is #{sum}"
