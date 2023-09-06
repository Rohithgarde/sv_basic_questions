compile:
	vlib work;
	vlog -sv packed_and_unpacked.sv

simulate:
	vsim packed_and_unpacked -l packed_and_unpacked.log -c -do "run -all; exit;"

all:
	make compile && make simulate


