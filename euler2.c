#include <stdio.h>
#include <stdlib.h>

int main() 
{
   long x = 1;
   long y = 0;
   long sum = 0;
   long max = 4000000;
   while ( y < max && x < max) {
      long current = x + y;
      if ( current % 2 == 0 && current < max) {
         sum = sum + current;
         printf("current: %lu\n", current);
      }
      x = y;
      y = current;
   }
   printf("The sum of the even fibonacci nubmers less than four million is: %lu\n", sum);
   return 0;
}
