T ?= 1000
CC = g++
OP ?=  
FSANITIZE = address
WALL ?= #-Wall
WERROR ?= #-Werror
CFLAGS = $(OP) $(WALL) $(WERROR) -std=c++17 -o
DFLAGS = -D__AUTO_TEST__ 

make:
	@make data;
	@make totest;
	@make std;
data:
	@$(CC) $(CFLAGS)   data.out      data.cpp $(DFLAGS)
totest:
	@$(CC) $(CFLAGS) totest.out    totest.cpp $(DFLAGS) 	
std:
	@$(CC) $(CFLAGS)    std.out       std.cpp $(DFLAGS)
auto_test:
	@$(CC) $(CFLAGS)  auto_test auto_test.cpp $(DFLAGS)
run:
	@if [ ! -e data.out ]; then 	\
		make data;		\
	fi
	@if [ ! -e totest.out ]; then	\
		make totest;		\
	fi
	@if [ ! -e std.out ]; then	\
		make std;		\
	fi
	./auto_test $(T);
test:
	make;
	./auto_test $(T);
clean:
	@rm -f *.out *.txt *.in *.d
