CC = gcc
AS = gcc
CFLAGS = -Wall -g
LDFLAGS = -static

SRC_DIR = ../src
OBJ_DIR = obj

TEST_SRC = test_memset.c
TEST_OBJ = $(TEST_SRC:.c=.o)
ASM_OBJ = memset.o

all: test_memset

test_memset: $(TEST_OBJ) $(ASM_OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

$(ASM_OBJ): $(SRC_DIR)/memset.s
	$(AS) -c $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f test_memset *.o
