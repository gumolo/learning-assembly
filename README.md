# learning-assembly

Codes from my personal experimentation with the assembly language for x86-64 Linux.
Not a course.

## Overview

This repository contains small assembly programs written for x86-64 Linux. The goal is exploration and experimentation, not structured teaching material or best practices. Expect minimal examples, direct system calls, and very little abstraction.

## Requirements

On Debian/Ubuntu-based systems, install the required tools:

```bash
sudo apt install nasm binutils
```

## Building an Example

To assemble a source file using Netwide Assembler (for example, `hello.asm`):

```bash
nasm -f elf64 hello.asm
```

Link the object file to create an executable:

```bash
ld hello.o -o run
```

## Notes

- Targets **x86-64** processors
- Uses raw Linux syscalls
- No libc, no runtime, no safety rails

This repository exists purely for learning by doing.
