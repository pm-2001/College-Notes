//******** Name: Sobhag Bairwa               Roll no.:21D80083       Mobile no.:9352765077 ********//

#include<stdio.h>
int main(){
    int inp1,inp2,a,temp,sum,rmdr,b,fact;
    printf("Enter first number :");
    scanf("%d",&inp1);
    printf("Enter second number :");
    scanf("%d",&inp2);
    printf("Strong numbers between %d and %d are : ",inp1,inp2);
    for(a=inp1;a<=inp2;a++){
        temp=a;
        sum=0;
        while(temp!=0){
            fact=1;
            rmdr=temp%10;
            for(b=rmdr;b>=1;b--){
                fact = fact*b;       
            }
            sum = sum+fact;
            temp=temp/10;
        }
        if(sum==a){
            printf("%d, ",sum);
        }
    }
    return 0;
}