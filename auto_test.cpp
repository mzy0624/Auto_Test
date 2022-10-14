#include <bits/stdc++.h>
using namespace std;
int main(int argc, char *argv[])
{
    int T = atoi(argv[1]);
    for (int i = 1; i < T; i++)
    {
        cout << "The result of No. " << i << "case is: ";
        system("./data.out > data.in");
        system("./totest.out < data.in > totest.txt");
        system("./std.out < data.in > std.txt");
        if (system("diff std.txt totest.txt"))
        {
            cout << "\033[1;31mWrong Answer\033[0m\n";
            return 0;
        }
        else
            cout << "\033[1;32mAccepted\033[0m\n";
    }
    return 0;
}

