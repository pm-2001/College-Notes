#include<stdio.h>

int fibo(int x){
    printf("%d", x+(fibo(x)));
    x=x+fibo(x);
}

int main(){
    int t=0;
    return 0;
}