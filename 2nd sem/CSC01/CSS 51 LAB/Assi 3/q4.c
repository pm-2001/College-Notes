//******** Name: Sobhag Bairwa               Roll no.:21D80083       Mobile no.:9352765077 ********//

#include<stdio.h>
int main(){
    int inp1,inp2,temp,i,sum;
    printf("Enter first number : ");
    scanf("%d",&inp1);
    printf("Enter last number : ");
    scanf("%d",&inp2);
    printf("Perfect numbers between %d and %d are : ",inp1,inp2);
    for(temp= inp1; temp<=inp2;temp++){
        sum=0;
        for(i=1;i<temp;i++){
            if(temp%i==0){
                sum =sum+i;
            }
        }
        if((sum)==temp){
            printf("%d, ",temp);
        }
    }
    return 0;
}