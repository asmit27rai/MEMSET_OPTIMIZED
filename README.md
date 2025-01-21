# Optimized memset Function

## Solution Overview

This repository contains an optimized implementation of the `memset` function, designed to enhance performance when the size (`a2`) is a multiple of 4, while minimizing the static code size. The implementation also ensures compliance with RISC-V memory alignment constraints.

### Key Features

- **Word-Aligned Access**: 
  - For sizes that are multiples of 4, the function uses word-wise (`sw`) operations for improved efficiency.

- **Unaligned Access Handling**:
  - If the pointer (`a0`) is misaligned, the function processes initial bytes individually until alignment is achieved. This ensures compatibility when `__riscv_misaligned_avoid == 1`.

- **Compact Code**:
  - The function uses a minimal number of instructions to keep the code size as small as possible, while still providing optimal performance for common use cases.

### Assembly Code Highlights

- Efficient handling of misaligned memory access with conditional loops.
- Optimized performance for word-aligned memory operations, which account for the majority of calls (90% as per profiling).
- Safe handling of trailing bytes when the size is not a multiple of 4.

## GitHub Repository

The complete solution, including the assembly implementation, test cases, and setup instructions, is available in the GitHub repository:

[GitHub Repository - Optimized memset Function](https://github.com/asmit27rai/MEMSET_OPTIMIZED.git)

## Testing the Solution

To ensure that the implementation is working correctly, we have created a set of test cases. These tests cover the following scenarios:

1. Setting all bytes to a specific value.
2. Partial `memset` operations.
3. Zero-length `memset`.

### Running the Tests

Follow these steps to compile and run the tests:

1. **Navigate to the `tests` directory**:
   ```bash
   cd tests
2. **Build the test suite**:
   ```bash
   make
3. **Run the test**:
   ```bash
   ./test_memset

## Conclusion

This optimized memset solution is compact, efficient, and fully adheres to the RISC-V memory alignment specifications. It is particularly optimized for scenarios where the size is a multiple of 4, ensuring significant performance improvements for the majority of use cases.
