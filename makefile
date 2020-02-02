#functions to include
all: main.o myfunc.o
	g++ -Wall -o myexe main.o myfunc.o

#rebuilding main	
main.o: main.cpp myfunc.h
	g++ -Wall -c main.cpp

#rebuilding myfunc
myfunc.o: myfunc.cpp myfunc.h
	g++ -Wall -c myfunc.cpp

#cleaning function
clean:
	rm -f *.o myexe.exe