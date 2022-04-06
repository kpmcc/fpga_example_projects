RTLDIR = ../rtl

all: simulate

simulate: testbench.vvp

testbench.vvp: ${RTLDIR}/adder.v adder_tb.v
	iverilog -o $@ $^

clean:
	rm ./testbench.vvp ./test.vcd

run:
	./testbench.vvp

.PHONY: clean run
