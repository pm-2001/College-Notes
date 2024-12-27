#include<stdio.h>

struct frnd{
    char name[20];
    char gndr[5];
    long long int mob;
    char bloodg[5];
    char email[20];
    char area[20];
    char city[20];
    long int pcode;
    char DOB[20];
}address;

void add(){
    printf("Enter name : ");
    gets(address.name);

    printf("Enter gender M/F : ");
    gets(address.gndr);

    printf("Enter mobile no. : ");
    scanf("%lld",&address.mob);

    printf("Enter blood group : ");
    scanf("%s",address.bloodg);

    printf("Enter email : ");
    scanf("%s",address.email);

    printf("Enter city : ");
    scanf("%s",&address.city);
    
    printf("Enter area : ");
    scanf("%s",&address.area);

    printf("Enter pin code : ");
    scanf("%ld",&address.pcode);

    printf("Enter date of birth : ");
    scanf("%s",address.DOB);
}
void display(){
    printf("\nDetails are :\n");
    printf("Name = %s\nGender = %s\nMobile no. = %lld\nBlood group = %s\nEmail = %s\nCity = %s\nArea = %s\nPin code= %ld\nDate of Birth = %s",address.name,address.gndr,address.mob,address.bloodg,address.email,address.city,address.area,address.pcode,address.DOB);
}

int main(){
    // struct add address;
    add();
    display();
    return 0;

}