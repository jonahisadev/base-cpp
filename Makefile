CC = g++
CFLAGS = -g -c -std=c++11
LDFLAGS = -g
SRC = $(wildcard src/*.cpp)
HDR = $(wildcard include/*.h)
OBJ = $(SRC:.cpp=.o)
EXEC = main

all: $(EXEC) $(OBJ)

debug: all
debug: CFLAGS += -DDEBUG -O0

release: all
release: CFLAGS += -DRELEASE -O3

linux: all
linux: CFLAGS += -DOS_LINUX

mac: all
mac: CFLAGS += -DOS_MAC

windows: all
windows: CFLAGS += -DOS_WIN

$(EXEC): $(OBJ)
	$(CC) $^ -o $@ $(LDFLAGS)

%.o: %.cpp $(HDR)
	$(CC) $< -o $@ $(CFLAGS)

clean:
	rm -rf src/*.o $(EXEC)