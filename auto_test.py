import sys
import os
T = int(sys.argv[1])
for i in range(1, T + 1):
    print('The result of No.', i, 'case is: ', end = '')
    os.system('python3 data.py > data.in')
    os.system('python3 totest.py < data.in > totest.txt')
    os.system('python3 std.py < data.in > std.txt')
    if os.system('diff std.txt totest.txt'):
        print('\033[1;31mWrong Answer\033[0m')
        break
    else:
        print('\033[1;32mAccepted\033[0m')
