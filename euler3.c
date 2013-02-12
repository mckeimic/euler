#include <stdlib.h>
#include <stdio.h>
#include <math.h>

/*Not working properly atm*/

int isPrime (long num) {
   if ( num % 2 == 0 ) {
      return 0;
   }

   for ( int i = 3; i < sqrt(num) + 1; i += 2 ) {
      if ( num % i == 0 )
         return 0;
   }
   return 1;
}

int main (int argc, char *argv[]) 
{
   long num = 600851475143;
   long answer = 0;
   long startnum = sqrt(num) + 21;
   if ( startnum % 2 == 0 ) {
      startnum = startnum - 1;
   }
   for ( long i = startnum; i > 3; i -= 2 ) {
      if ( num % i == 0 ) {
         if (isPrime(i)) {
            answer = i;
         }
      }
   }
   printf("The largest prime factor of %lu is %lu\n", num, answer);
   return 0;
}

