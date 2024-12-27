/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */

#include<stdio.h>
int main(){
    int a,b;
    char oprnd;
    printf("Enter the operand:\n");
    scanf("%c",&oprnd);
    printf("Enter two numbers :\n");
    scanf("%d\n %d",&a,&b);
    switch(oprnd){
        case '+':
        printf("%d + %d = %d",a,b,a+b);
        break;
        case '-':
        printf("%d - %d = %d",a,b,a-b);
        break;
        case '*':
        printf("%d * %d = %d",a,b,a*b);
        break;
        case '/':
        printf("%f / %f = %f",a,b,a/b);
        break;
        case '%':
        printf("Remainder when %d / %d = %d",a,b,a%b);  
        break;
        default:
        printf("Invalid operation.");

    }
    return 0;
}