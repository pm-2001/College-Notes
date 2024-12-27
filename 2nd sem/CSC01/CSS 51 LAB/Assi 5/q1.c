/*                    Name: PRINCE MAURYA   
         Roll no.:21D80005          Mobile no.:9453122989    */ 
#include <stdio.h>
int main()
{
    int alpha = 64;
    for (int i = 0; i < 7; i++)
    {
        for (int j = 0; j <= i; j++)
        {
            alpha++;
            if (alpha == 91)
            {
                alpha = 65;
            }
            printf("%c", alpha);
        }
        printf("\n");
    }
    return 0;
}