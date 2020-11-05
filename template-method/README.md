# Template Method Design Patter examples

>In object-oriented programming, the template method is one of the behavioral design patterns identified by Gamma et al.[1] in the book Design Patterns. The template method is a method in a superclass, usually an abstract superclass, and defines the skeleton of an operation in terms of a number of high-level steps. These steps are themselves implemented by additional helper methods in the same class as the template method. Source: [wikipedia](https://en.wikipedia.org/wiki/Template_method_pattern)

This directory contains an example of the Template Method Desgin Pattern implemented in different languages.

## The problem

A C++ compiler follows a fours steps algorithm to build an executable (preprocess, compile, assemble, link), but the implementation of each steps depends on the architecture where the operation is performed (x86 or AMD).

## The approach

A base Compiler class has a "build" method that implements the base algorithm. There are two derived Compiler classes that implement the compiler's logic on the specific architecture. These clases were writen with the intention to illustrate the design pattern, they are not meant to actually show how to implement a compiler.


## Demo

The are examples in several languages: if it's a compiled language, you can compilete it by running `make` on the specific directory.

To run the programme, execute the script/binary called "main".

The examples have a hardcoded "source file" to compile. While executing, the examples will print the outcome of each of the steps, first for one Architecture and then for the other. Something like:

```

Initialize X86 Compiler

Source code: void main() { cout << INT_MAX << endl; }
X86 preprocesor generated 'void main() { cout << 2147483647 << }l; }'
X86 compiler generated 'msg  db "2147483647", 0x0d, 0x0a, "$"'
X86 assembler generated '0110110101110011'
X86 linker generated '01000011011011110110110101110011'


Initialize ARM Compiler

Source code: void main() { cout << INT_MAX << endl; }
ARM preprocesor generated 'void main() { cout << 32767 << endl; }'
ARM compiler generated '.asciz "32767\n"'
ARM assembler generated '001011100110'
ARM linker generated '010000110110001011100110'
```
