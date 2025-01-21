# Optimized `memset` Implementation for RISC-V

## Overview
This project provides an optimized `memset` function written in RISC-V assembly. The function is designed for minimal code size while enhancing performance when the size is a multiple of 4. It also supports scenarios where misaligned memory accesses must be avoided, as per the RISC-V specifications.

## Features
- **Optimized for Word Access**: Fast handling when the size is a multiple of 4.
- **Support for Misaligned Access Avoidance**: Complies with `__riscv_misaligned_avoid`.
- **Static Code Size Efficiency**: Designed with minimal instructions for compactness.
- **Robust Testing**: Includes test cases to verify correctness.

## Requirements
- **GCC for RISC-V**: Install a RISC-V capable GCC for cross-compilation.
- **Make**: A build system for compiling the tests.