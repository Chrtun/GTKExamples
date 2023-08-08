BIN := main

CC = /usr/bin/g++

SOURCES := main.c

OBJECTS := $(SOURCES:%.c=%.o)

CFLAGS := $(shell pkg-config --cflags gtk+-3.0)

LIBS := $(shell pkg-config --libs gtk+-3.0)

all: $(BIN)

$(BIN): $(OBJECTS)
	$(CC) -o $(BIN) $(OBJECTS) $(LIBS)

clean:
	rm $(OBJECTS) $(BIN)
