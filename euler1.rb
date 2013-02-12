#!/usr/bin/ruby
#solves the first project euler problem, summing all multiples
#

for j in [9,19,29,39,49,59,69,79,89,99,999]
   sum = 0
   for i in 0..j
      if ( i % 5 == 0 || i % 3 == 0) then 
         sum += i
      end
   end
   test = true
    puts "The sum of these numbers is #{j}: #{sum}"
   puts "Multiple of 5?: #{test}"
   puts sum_int(1001)
end

def sum_int(number)
   #sum2 = number
   #while (number.size() > 0 ) do
      #sum2 += number % 10 
      #number /= 10
   #end
   return number
end
