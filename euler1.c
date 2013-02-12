#include <stdlib.h>
#include <stdio.h>

int main (int argc, char *argv[])
{
   int sum = 0;
   for (int i = 0; i < 1000; i++) {
      if ( i % 3 == 0 || i % 5 == 0 ) {
         sum = sum + i;
      }
   }
   printf("The sum of all numbers divisible by 3 & 5 less than 1000 is %d\n", sum);
}
