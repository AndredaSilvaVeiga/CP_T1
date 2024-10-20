CPP = g++ -Wall -pg -fno-omit-frame-pointer -O3 -funroll-loops -ftree-vectorize -msse4 -mavx
SRCS = main.cpp fluid_solver.cpp EventManager.cpp

all:
	$(CPP) $(SRCS) -o fluid_sim

clean:
	@echo Cleaning up...
	@rm fluid
	@echo Done.
