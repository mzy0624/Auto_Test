#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{
    int T = atoi(argv[1]);
    for (int i = 1; i < T; i++)
    {
        printf("The result of No. %d case is: ", i);
        system("./data.out > data.in");
        system("./totest.out < data.in > totest.txt");
        system("./std.out < data.in > std.txt");
        if (system("diff std.txt totest.txt"))
        {
            printf("\033[1;31mWrong Answer\033[0m\n");
            return 0;
        }
        else
            printf("\033[1;32mAccepted\033[0m\n");
    }
    return 0;
}

