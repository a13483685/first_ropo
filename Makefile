LIB_PATH=lib
LIB_SRC=lib/test.c

all:shared_lib
	gcc -o main main.c -L lib -ltest -Wl,-rpath "lib"


shared_lib:
	gcc -c -fPIC -o ${LIB_PATH}/test.o ${LIB_SRC}
	gcc -fPIC -shared -o ${LIB_PATH}/libtest.so ${LIB_PATH}/test.o
clean:
	rm  ${LIB_PATH}/test.o ${LIB_PATH}/libtest.so main 

