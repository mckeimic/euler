#!/usr/bin/ruby

max = 4_000_000
x = 1
y = 2
fibbonacci = [1,2]
sum = 0

while x < max && y < max do
   if x+y < max then
      new = x+y
      x = y
      y = new
      fibbonacci << new
   else
      break
   end
end

for i in fibbonacci do
   if i % 2 == 0 then
      sum += i
   end
end

puts fibbonacci
puts "The sum is: #{sum}"
