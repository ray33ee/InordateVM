# InordateVM

InordateVM is a minimalistic and complete game-oriented Virtual Machine implementing the Inordate language, with such features as

  - Easy to implement interpreter
  - Basic assembly-like instructions
  - High level game-specific features

# To Do

  - Write C compiler for Inordate
  - Cleanup interpreter folder with obj, src, header and bin folders.
  - Create makefile for interpterer 
  - Combine and sync all readme, todo and changelog docs
  - Compiler: Test to make sure variable numbers do not exceed limit
  - Interpreter: How do I pass parameters, on the stack or with registers? what if i need to preserve registers on the stack>
  - Interpreter: Which math functions should set the flags? Integer only, or floating too?
  - Interpreter: Add pow and div functions
  - Interpreter: Verify cmp, sub, mul, div, test and pow functions
  - Interpreter: Create class and implement physics objects, update on each loop, store in linked list etc.


# Explination

It is worth mentioning here the distinction between the interpreter, the actual virtual machine, and the compiler. While the interpreter takes a file, decodes and executes the instructions, the compiler is responsible for taking Inordate source code and converting it to a binary file.

# Inordate

Inordate is a strongly typed and statically typed assembly-like language. The following is a simple example of Inordate code:

    float $1
    float $2
    float $0
    mul $0, $1, $2
    
which simply declares $0, $1 and $2 as 32-bit floating numbers and stores the result of $2 times $1 into $0. Not only does Inordate contain the basic instructions for completeness, it also contains higher level types and functions for higher level coding. Such examples include vectors, and physics objects which automatically handle moving objects. See [bytecodes.xml](Compiler/src/vmcompiler/bytecodes.xml) for a complete list of Inordate instructions.

# Compiler

The compiler is a Java application designed to convert Inordate source code into bytecode more readable by the interpreter. The compiler is designed to perform type checking, type deduction, and techniques to make coding in Inordate simple. 

# Interpreter 

Since Inordate was desigend to run on simple MCUs or Embedded processors where resources are limited, the interpreter must be light weight. This means that a 'Simple interpreter, Complex compier' approach is taken. 

A time where this philosophy is not adhered to is, for example, the implementation of the physics object, which increases interpreter complexity for coding simplicity.
