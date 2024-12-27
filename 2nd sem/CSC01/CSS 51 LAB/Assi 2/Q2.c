/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */

#include<stdio.h>
int main(){
    int a;
    printf("Enter year :\n");
    scanf("%d",&a);

    if(a>=1000&a<=9999){
        if(a%100==0){
            if(a%400==0){
               printf("%d is a leap year-366 days.",a); 
            }
            else{
                printf("%d is a normal year-365 days.",a);
            }   
        }
        else if(a%4==0){
            printf("%d is a leap year-366 days.",a);
        }
        else{
             printf("%d is a normal year-365 days.",a);
        }
    }   
    else{
        printf("Not a four digit year");
    }
    return 0;
}