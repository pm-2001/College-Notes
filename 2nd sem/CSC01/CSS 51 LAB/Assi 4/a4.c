/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */ 
#include<stdio.h>
void hex(char chk[]){
    int k=1, bit, sum=0;
    for (int i=3; i>=0; i--){
        bit = chk[i]-48;
        sum+=bit*k;
        k*=2;
    }
    switch(sum){
        case 10: printf("A"); break;
        case 11: printf("B"); break;
        case 12: printf("C"); break;
        case 13: printf("D"); break;
        case 14: printf("E"); break;
        case 15: printf("F"); break;
        default: printf("%d", sum); break;
    }
}
int main(){
    char bin[50], ch, str[4];
    printf("Enter a binary fraction: ");
    int j, i=0;
    do{
        ch = getchar();
        if (ch == '.'){
            j = 4-(i%4);
        }
        bin[i] = ch;
        i++;
    } while (ch != '\n');
        i=0; 
    printf("Hexadecimal Representation: ");
    for(int k=0; k<4; k++){
        str[k] = '0';
    }
    while(bin[i]!='\n'){
        if (j==4){
            j=-0;
            hex(str);
            for(int k=0; k<4; k++){
                str[k] = '0';
            }
        }
        if (bin[i] == '.'){
            printf(".");
        }
        else{
            str[j] = bin[i];
            j++;
        }
        i++;
    }
    hex(str);
    return 0;
}
