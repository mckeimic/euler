#!/usr/bin/ruby
#Solves project Euler problem 4

maxFactor = 999
palindromes = []

def isPalindrome(number)
   number = number.to_s.split('')
   for i in 0..number.length do
      if number[i] != number[-i-1] then
         return false
      end
   end
   return true
end

for i in 0..maxFactor**2 do
   if isPalindrome(i) then
      palindromes << i
   end
end

for i in palindromes.reverse do
   maxFactor.downto(0) { |j| 
      maxFactor.downto(0) { |k|
         if j * k == i then
            puts "#{j} * #{k} = #{i}"
            exit()
         end
      }
   }
end
