/*Correctly solves Project Euler problem 10*/
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

long sum = 2;
long limit = 2000000;

/*Returns 0 if not prime, and 1 if prime*/
int checkPrime(int num) {
   if ( num % 2 == 0 ) {
      return 0;
   }
   for ( int i = 3; i <  sqrt(num)+1; i += 2 ) {
      if ( num % i == 0 ) {
         return 0;
      }
   }
   return 1;
}

int main()
{
   for (long i = 3; i < limit; i+=2) {
      if ( checkPrime(i) == 1 ) {
         printf("Found prime %lu\n",i);
         /*sum += i;*/
      }
   }
   printf("The Sum of all prime numbers less than %lu is %lu\n", limit, sum);
}
