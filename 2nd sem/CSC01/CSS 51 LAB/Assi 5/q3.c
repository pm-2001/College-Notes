/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */ 
#include<stdio.h>
int main(){
   int i,j;
   for(i=1;i<=4;i++)
   {
        int spac,num=i;
        for(spac=4-i;spac>0;spac--){
            printf(" ");
        }
        for(j=1;j<=i*2-1;j++){
            printf("%d",num++);
        }
        printf("\n");
   }
    return 0;
}