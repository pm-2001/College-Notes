/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */ 
#include<stdio.h>
int main(){
   int binval, decval=0, base = 1, rem;
   printf("Enter the binary number: ");
   scanf("%d", &binval);
   while (binval != 0){
      rem = binval % 10;
      decval = decval + rem * base;
      base = base * 2;
      binval = binval / 10;
   }
   //printf("Equivalent hexadecimal value: %x", decval);
   int rmdr,i=0,j;
   char N[20];
   while(decval!=0){
       rmdr=decval%16;
       if(rmdr<10){
           rmdr=rmdr+48;
       }
       else{
           rmdr=rmdr+55;
       }
       N[i]=rmdr;
       i++;
       decval=decval/16;
    }
   printf("Equivalent hexadecimal value:");
   for(j=i-1;j>=0;j--){
       printf("%c",N[j]);
   }
   return 0;
}