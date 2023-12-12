# 📖🧠 IRI Haskell Module 💻🚀

This Haskell module, `IRI.hs`, implements basic operations on natural numbers and various functions, including those related to lists.

# MFC Recursive Functions

This project is part of the Mathematical Foundations of Computing (MFC) subject and tutoring at IMD-UFRN throughout the years 2022-2023. The aim is to implement natural numbers and various recursive functions in Haskell.

## Authors

- **Danillo Fonseca** - [DanilloGitHubProfile](https://github.com/DanilloFonseca)
- **Isaac Marlon da Silva Lourenço** - [IsaacGitHubProfile](https://github.com/isaacmsl)

## Overview

The module includes the definition of natural numbers (`Nat`) and provides implementations for functions such as length calculation, doubling, successor and predecessor, addition, multiplication, exponentiation, Fibonacci sequence, conversion between integers and natural numbers, factorial, list operations (zip, unzip, pairs, sorted), merge sort, reverse, foldNat, map, and filter.

## Types

- `Nat`: Defines the natural number data type.
- `Unit`: Defines a unit type with a single value `Star`.
- `Empty`: An empty type.
- `List a`: Defines a polymorphic list type.

## Functions

### Basic Natural Number Functions

- `len`: Calculates the length of a list.
- `double`: Doubles a natural number.
- `pd`: Computes the predecessor of a natural number.
- `plus`: Adds two natural numbers.
- `mult`: Multiplies two natural numbers.
- `pow`: Exponentiation.
- `ppow`: Tail-recursive exponentiation.
- `gig`: Recursive tail-recursive exponentiation.
- `fib`: Calculates the Fibonacci sequence.

### Conversion Functions

- `toNat`: Converts an integer to a natural number.
- `natToInt`: Converts a natural number to an integer.

### Recursive Functions

- `fact`: Computes the factorial of a natural number.

### List Operations

- `zip`: Zips two lists into pairs.
- `unzip`: Unzips a list of pairs into two lists.
- `pairs`: Creates a list of consecutive pairs from a list.
- `sorted`: Checks if a list is sorted.

### Sorting

- `merge`: Merges two sorted lists.
- `q_sort`: Implements the QuickSort algorithm.

### List Manipulation

- `reverse`: Reverses a list.
- `map`: Applies a function to each element of a list.
- `filter`: Filters elements of a list based on a predicate.

### Folding

- `foldNat`: Folds over a natural number.

## 📜 License 📜:
This module is open-source and available under the MIT License. Feel free to contribute with this project. 😎