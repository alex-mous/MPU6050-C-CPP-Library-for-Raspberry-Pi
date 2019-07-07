all: MPU6050.cpp
	g++ -fPIC -c MPU6050.cpp -o MPU6050.o
	g++ -shared -o libMPU6050.so MPU6050.o
	install -m 755 -p libMPU6050.so /usr/lib/
	install -m 644 -p MPU6050.h /usr/include/
	rm -f MPU6050.o
	rm -f libMPU6050.so

clean:
	rm -f /usr/include/MPU6050.h
	rm -f /usr/lib/libMPU6050.so
	rm -f Example

example:
	g++ Example.cpp -o Example -lMPU6050 -pthread
	./Example
