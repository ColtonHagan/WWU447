CC=gcc
CFLAGS=-g -Wall
FILES=Simulation.c
DERIV=${FILES:.c=.o}
DEPEND=$(DERIV)

all: Simulation
Simulation: $(DEPEND)
	$(CC) -o Simulation $(CFLAGS) $(DERIV) -lm
clean:
	rm -f $(DERIV) Simulation

