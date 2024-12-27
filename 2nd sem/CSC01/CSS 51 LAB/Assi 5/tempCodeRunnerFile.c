#include<stdio.h>
int main(){
    char str='*';
    for(int i=1;i<=9;i=i+2){
        for(int j=8;j>=i;j=j-2){
            printf(" ");
        }
        for(int j=1;j<=i;j++){
            printf("*");
        }
        printf("\n");
    }
    return 0;
}