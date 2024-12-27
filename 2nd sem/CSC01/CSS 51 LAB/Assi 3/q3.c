//******** Name: Sobhag Bairwa               Roll no.:21D80083       Mobile no.:9352765077 ********//

#include<stdio.h>
int main(){
    int inp1,inp2,a,armnum,b,cub;
    printf("The first no is : ");
    scanf("%d", &inp1);
    printf("The last no is : ");
    scanf("%d", &inp2);
    printf("Armstrong numbers between %d and %d are : ",inp1,inp2);
    for(a=inp1;a<=inp2;a++){
            armnum = 0;
            b=a;
            while(b>0){
            cub=b%10;
            armnum=armnum+cub*cub*cub;
            b=b/10;
            }
        if(armnum == a){
            printf("%d, ",armnum);
        }
    }
    return 0;
}