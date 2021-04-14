#
# Type 'make' with this 'makefile' file to build the example BLITZ programs.
# It will execute the following commands as needed, based on files'
# most-recent-update times.
# 

all: aFunProgram

Runtime.o: Runtime.s
	asm Runtime.s

System.s: System.h System.k
	kpl System -unsafe

System.o: System.s
	asm System.s

aFunProgram.s: aFunProgram.h aFunProgram.k System.h
	kpl aFunProgram

aFunProgram.o: aFunProgram.s
	asm aFunProgram.s

aFunProgram: Runtime.o System.o aFunProgram.o
	lddd Runtime.o System.o aFunProgram.o -o aFunProgram
clean:
	rm -f Runtime.o System.s System.o aFunProgram.o aFunProgram.s aFunProgram
