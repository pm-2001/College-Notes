//******** Name: Sobhag Bairwa               Roll no.:21D80083       Mobile no.:9352765077 ********//
         
#include<stdio.h>
int main(){
int inp1,temp,orinumb,sum=0;
printf("Enter the number : ");
scanf("%d",&inp1);
    orinumb=inp1;
while (inp1!=0){
    temp=inp1%10;
    sum = sum*10 +temp;
    inp1=inp1/10;
}
    if(orinumb==sum){
        printf("%d is palindrome",orinumb);
    }
    else{
        printf("%d is not palindrome.",orinumb);
    }
    return 0;
}

