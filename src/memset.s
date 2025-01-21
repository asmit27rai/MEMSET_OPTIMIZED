.global memset
memset:
  mv t1, a0
  beqz a2, 3f
#ifdef __riscv_misaligned_avoid
  andi t2, t1, 3
  beqz t2, aligned_start
unaligned_loop:
  sb a1, 0(t1)
  addi t1, t1, 1
  addi a2, a2, -1
  andi t2, t1, 3
  bnez t2, unaligned_loop
aligned_start:
#endif
  srli t2, a2, 2
  beqz t2, byte_loop
word_loop:
  sw a1, 0(t1)
  addi t1, t1, 4
  addi t2, t2, -1
  bnez t2, word_loop
  andi a2, a2, 3
  beqz a2, 3f
byte_loop:
  sb a1, 0(t1)
  addi t1, t1, 1
  addi a2, a2, -1
  bnez a2, byte_loop
3f:
  ret
