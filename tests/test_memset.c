#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <assert.h>

void *memset(void *dest, int val, size_t len);

void test_memset() {
    uint8_t buffer[16];

    memset(buffer, 0xAA, 16);
    for (int i = 0; i < 16; i++) {
        assert(buffer[i] == 0xAA);
    }

    memset(buffer, 0x55, 8);
    for (int i = 0; i < 8; i++) {
        assert(buffer[i] == 0x55);
    }

    memset(buffer, 0x00, 0);
    for (int i = 0; i < 16; i++) {
        assert(buffer[i] == 0x55);
    }

    printf("All tests passed successfully.\n");
}

int main() {
    test_memset();
    return 0;
}
