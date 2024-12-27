/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */ 
#include<stdio.h>
int main(){
    int spac;
    for(int i=1;i<=6;i++){
        int coeff=1;
        for(spac=6-i;spac>0;spac--){
            printf(" ");
        }
        for(int j=1;j<=i;j++){
            printf(" %d",coeff);
            coeff=coeff*(i-j)/j;
        }
        printf("\n");
    }
    return 0;
}