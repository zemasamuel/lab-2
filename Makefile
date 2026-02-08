all: main

main: main.o isEven.o isOdd.o
  gcc -o main main.o isEven.o isOdd.o

main.o: main.c isEven.h isOdd.h
	gcc -c main.c

isEven.o: isEven.c isEven.h
	gcc -c isEven.c

isOdd.o: isOdd.c isOdd.h
	gcc -c isOdd.c

clean:
	rm -f *.o main
