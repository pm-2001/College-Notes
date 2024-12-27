/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */

#include <stdio.h>

int main()
{
    int a, b, c, biggest, lowest;
    printf("Enter three numbers no:\n");
    scanf("%d\n %d\n %d", &a, &b, &c);

    biggest = ((a > b) & (a > c)) ? a : (b > c)?b : c;
    lowest = ((a < b) & (a < c)) ? a : (b < c) ? b: c;

    printf("Biggest number is: %d\n Lowest number is: %d", biggest, lowest);
    return 0;
}