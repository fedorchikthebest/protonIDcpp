CC = g++
FILES = ./build/kuznechik.o ./build/block_cipher.o ./build/cfb.o ./build/blowfish.o ./build/bcrypt.o ./build/base64.o ./src/main.o
OBJECT = ./build/main.out
LIBS = -lsqlite3

all: $(FILES)
	$(CC) $(FILES) $(MAIN) -o $(OBJECT) $(LIBS)


./build/kuznechik.o: ./src/include/crypto/kuznechik/kuznyechik.cpp
	$(CC) -c -o ./build/kuznechik.o ./src/include/crypto/kuznechik/kuznyechik.cpp


./build/block_cipher.o: ./src/include/crypto/kuznechik/block_cipher.cpp
	$(CC) -c -o ./build/block_cipher.o ./src/include/crypto/kuznechik/block_cipher.cpp


./build/cfb.o: ./src/include/crypto/kuznechik/cfb.cpp
	$(CC) -c -o ./build/cfb.o ./src/include/crypto/kuznechik/cfb.cpp


./build/blowfish.o: ./src/include/crypto/hash/blowfish.cpp
	$(CC) -c -o ./build/blowfish.o ./src/include/crypto/hash/blowfish.cpp


./build/bcrypt.o: ./src/include/crypto/hash/bcrypt.cpp
	$(CC) -c -o ./build/bcrypt.o ./src/include/crypto/hash/bcrypt.cpp


./build/base64.o: ./src/include/base64.cpp
	$(CC) -c -o ./build/base64.o ./src/include/base64.cpp


./build/main.o: ./src/main.cpp
	$(CC) -c -o ./build/main.o ./src/main.cpp