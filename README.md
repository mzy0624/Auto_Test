#### data.cpp

```
拿来随机生成数据，写入 data.in 文件中，可以根据自己设置生成符合条件的数据。
```

#### std.cpp

```
标准程序，保证得到的是正确的答案，但是时间和空间复杂度不作要求，输入由 data.in 给出，输出写入到 std.txt 文件中。
```

#### totest.cpp

```
需要测试的代码，输入由 data.in 给出，输出写入到 totest.txt 文件中。
```

#### auto_test.cpp

```
自动测试，auto_test 可执行文件不会被 make clean 删除，如需要重新编译可手动删除
```

#### Makefile
##### make auto_test
	编译 auto_test.cpp，auto_test 的可执行文件一般不会被删除，所以一般不需要进行编译，可以在手动删除 auto_test 可执行文件后，执行 make auto_test 命令
##### make data
	编译 data.cpp
##### make std
	编译 std.cpp
##### make totest
	编译 totest.cpp
##### make
	编译 data.cpp, std.cpp 和 totest.cpp
##### make run
	在缺少相应的可执行文件时，会先编译相应的源文件，然后再执行 ./auto_test
	make T=10 run 可以指定测试组数为 10，默认为 1000
##### make test
	重新编译 data.cpp, std.cpp 和 totest.cpp，然后再执行 ./auto_test
	make T=10 run 可以指定测试组数为 10，默认为 1000
##### make clean
	强制删除 *.d, *.out, *.in, *.txt

