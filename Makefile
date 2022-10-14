T ?= 1000
CC = gcc
OP ?=  
FSANITIZE = address
WALL ?= #-Wall
WERROR ?= #-Werror
CFLAGS = $(OP) $(WALL) $(WERROR) -o
DFLAGS = -D__AUTO_TEST__ 

make:
	@make data;
	@make totest;
	@make std;
data:
	@$(CC) $(CFLAGS)   data.out      data.c $(DFLAGS)
totest:
	@$(CC) $(CFLAGS) totest.out    totest.c $(DFLAGS) 	
std:
	@$(CC) $(CFLAGS)    std.out       std.c $(DFLAGS)
auto_test:
	@$(CC) $(CFLAGS)  auto_test auto_test.c $(DFLAGS)
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
