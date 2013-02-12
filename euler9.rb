#!/usr/bin/ruby
#Solves Euler 9 - Resume

finalSum = 1000

for a in 1..998 do
   for b in 1..998 do
      if Math.sqrt(a**2+b**2) % 1 == 0 then
         c = Math.sqrt(a**2+b**2)
         if a + b + c == finalSum then
            puts "The triple is: a=#{a}, b=#{b}, and c=#{c}. \n Their product is: #{a*b*c}"
            exit()
         end
      end
   end
end

