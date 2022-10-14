T ?= 1000
run:
	python3 auto_test.py $(T);
clean:
	@rm -f *.txt *.in
