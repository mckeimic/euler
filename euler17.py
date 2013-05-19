#!/usr/bin/python
"""If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
"""

digits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
prefixes = {2:"twen", 3:"thir", 4:"for", 5:"fif", 6:"six", 7:"seven", 8:"eigh", 9:"nine"}

def to_words(num):
   if 99 < num < 1000:
      letters = len("hundred")
      letters += len(digits[num / 100])
      if num % 100 != 0:
         letters += len("and")
         letters += dbl_digits(num % 100)
      return letters
   elif 9 < num < 100:
      return dbl_digits(num)
   elif num < 10:
      return len(digits[num])
   else:
      letters = len("thousand")
      letters += len(digits[num / 1000])
      if num % 1000 != 0:
         letters += len("and")
         letters += to_words(num % 1000)
      return letters
   return 0

def dbl_digits(num):
   if num == 10:
      return len("ten")
   elif num == 11:
      return len("eleven")
   elif num == 12:
      return len("twelve")
   elif num == 14:
      return len("fourteen")
   elif num == 0:
      return 0
   elif num < 10:
      return len(digits[num])
   else:
      if 12 < num < 20:
         return len(prefixes[num % 10] + 'teen')
      else:
         letters = len(prefixes[num / 10] + 'ty')
         if num % 10  == 0:
            return letters
         else:
            letters += len(digits[num % 10])
            return letters

letter_count = 0
for i in range(1,1001):
   letter_count += to_words(i)

print letter_count
