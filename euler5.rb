#!/usr/bin/ruby
#Solves Project Euler Problem 4

upperBound = 20

def checkFactors(num, upperBound)
   for i in [*2..upperBound].reverse.each do
      if num % i != 0 then
         return false
      end
   end
   return true
end

number = upperBound
while true do
   if checkFactors(number, upperBound) then
      puts number
      exit()
   else
      number += 1
   end
end

