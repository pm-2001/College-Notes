/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */ 
#include<stdio.h>
int main(){
    int decimalnum; 
    printf("Enter decimal number : ");
    scanf("%d",&decimalnum);
    int i,p;
    int N[10];
    for(i=0;decimalnum>0;i++){
        N[i] = decimalnum%2;
        decimalnum=decimalnum/2;
    }
    printf("Equivalent binary number is : ");
    for(i=i-1;i>=0;i--){
        printf("%d",N[i]);
    }
    
    return 0;
}