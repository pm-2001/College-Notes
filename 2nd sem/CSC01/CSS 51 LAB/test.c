#include <stdio.h>
int main()
{
    int a[10],i,j,key,flag,pos;
    for(i=0;i<=9;i++)
        {
        
            printf("Enter 2d array:\n");
            scanf("%d",&a[i]);
        }
    
    printf("the arrays are:");
    for(i=0;i<=9;i++)
    {
        printf("%d",a[i]);
    }
    printf("\nenter key to check:");
    scanf("%d",&key);
    for(i=0;i<=9;i++)
    {
        if(a[i]==key){
            pos=i+1;
        flag=1;
    }
    }
    if(flag=1)
    {
        printf("the number is found %d and its position is %d ",key,pos);
    }
    

}