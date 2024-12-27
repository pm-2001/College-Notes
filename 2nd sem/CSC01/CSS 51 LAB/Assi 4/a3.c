
/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989*/
#include<stdio.h>
int main(){
    char oct[100];
    int i=0;
    printf("Enter octal fraction number : ");
    scanf("%s",oct);
    printf("Equivalent binary fraction number is : ");
    while(oct[i]){
        
        switch(oct[i])
        {
            case '.':
            printf(".");break;
            case '0':printf("000");break;
            case '1':printf("001");break;
            case '2':printf("010");break;
            case '3':printf("011");break;
            case '4':printf("100");break;
            case '5':printf("101");break;
            case '6':printf("110");break;
            case '7':printf("111");break;
            default:printf("\n Invalid entered %c",oct[i]);
        }
        i++;
    }
    return 0;
}