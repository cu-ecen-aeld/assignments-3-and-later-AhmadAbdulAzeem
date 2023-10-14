CC = gcc
CFLAGS = -Wall
TARGET = writer
SRCS = writer.c


ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-gcc)
	CC = aarch64-none-linux-gnu-gcc
endif

default: $(TARGET)

$(TARGET): $(SRCS) 
	$(CC) $(CFLAGS) $(SRCS) -o $(TARGET)

clean:
	rm -f *.out $(TARGET)