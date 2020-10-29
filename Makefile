CC=g++

DEPS=MPU6050.h
CFLAGS=-fPIC -Wall

LIBS=-li2c
LFLAGS=-shared

OBJ=MPU6050.o
OLIB=libMPU6050.so



%.o: %.cpp $(DEPS)
	$(CC) -c $< -o $@ $(CFLAGS)

all: $(OBJ)
	$(CC) -o $(OLIB) $< $(LIBS) $(LFLAGS)

install: all $(OLIB) $(DEPS)
	install -m 755 -p $(OLIB) /usr/lib/
	install -m 644 -p $(DEPS) /usr/include/

uninstall:
	rm -f /usr/include/MPU6050.h
	rm -f /usr/lib/libMPU6050.so

clean:
	rm -f Example
	rm -f Example.o
	rm -f MPU6050.o
	rm -f libMPU6050.so

example: Example.o
	$(CC) $< -o Example -lMPU6050 -pthread
