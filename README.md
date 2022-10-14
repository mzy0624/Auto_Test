#### data.py

```
拿来随机生成数据，写入 data.in 文件中，可以根据自己设置生成符合条件的数据。
```

#### std.py

```
标准程序，保证得到的是正确的答案，但是时间和空间复杂度不作要求，输入由 data.in 给出，输出写入到 std.txt 文件中。
```

#### totest.py

```
需要测试的代码，输入由 data.in 给出，输出写入到 totest.txt 文件中。
```

#### auto_test.py

```
自动测试
```

#### Makefile
##### make run
	执行 auto_test.py，make T=10 run 可以指定测试组数为 10，默认为 1000
##### make clean
	强制删除 *.in, *.txt

