#include <stdlib.h>
#include <stdio.h>

int reverse(int number) {
   int n = number;
   int r = 0;
   
   while ( n > 0 ) {
      r = r * 10 + n % 10;
      n /= 10;
   }
   return r;
}

int isPalindrome(int number) {
   return number == reverse(number);
}

int main(int argc, char *argv[])
{
   int start1 = 99;
   int start2 = 99;
   int answer = 0;

   while (start2 > 0 ) {
      while ( start1 > 0 ) {
        if (isPalindrome(start1 * start2)) {
          if (start1 * start2 > answer ) {
            answer = start1 * start1;
          }
        }
        start1 -= 1;
      } 
      start1 = 99;
      start2 -= 1;
   }
   printf("The largest palindrome is: %d\n", answer);   
}
