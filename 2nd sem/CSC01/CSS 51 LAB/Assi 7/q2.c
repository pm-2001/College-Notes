#include<stdio.h>

struct transtn{
    char date[20];
    char time[10];
    char detail[100];
    long long int amnt;
}bookstr;

void add(){
    printf("Enter date : ");
        gets(bookstr.date);
        
     printf("Enter time : ");
        gets(bookstr.time);

    printf("Enter details : ");
        gets(bookstr.detail);

    printf("Enter amount : ");
    scanf("%lld",&bookstr.amnt);
}

void display(){
    printf("\nFollowing are the details---- :\n");
    printf("Date = %s\nTime= %s\nDeatils = %s\nAmount = %lld",bookstr.date,bookstr.time,bookstr.detail,bookstr.amnt);
}

int main(){
    add();
    display();
    return 0;

}