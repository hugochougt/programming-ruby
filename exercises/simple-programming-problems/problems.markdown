
**NOTE**: The following problems are copyed from [Simple Programming Problems](http://adriann.github.io/programming_problems.html) written by [adriann](http://adriann.github.io/).

## Elementary

 1. Write a program that prints ‘Hello World’ to the screen.
 2. Write a program that asks the user for his name and greets him with his name.
 3. Modify the previous program such that only the users Alice and Bob are greeted with their names.
 4. Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
 5. Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17
 6. Write a program that asks the user for a number n and gives him the possibility to choose between computing the sum and computing the product of 1,…,n.
 7. Write a program that prints a multiplication table for numbers up to 12.
 8. Write a program that prints all prime numbers. (Note: if your programming language does not support arbitrary size numbers, printing all primes up to the largest number you can represent is fine too.)
 9. Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether his number was too large or too small. At the end the number of tries needed should be printed. I counts only as one try if the user inputs the same number consecutively.
 10.    Write a program that prints the next 20 leap years.
 11.    Write a program that computes

    4⋅∑k=1106(-1)k+12k-1=4⋅(1-1/3+1/5-1/7+1/9-1/11…).

## Lists, Strings

 1. Write a function that returns the largest element in a list.
 2. Write function that reverses a list, preferably in place.
 3. Write a function that checks whether an element occurs in a list.
 4. Write a function that returns the elements on odd positions in a list.
 5. Write a function that computes the running total of a list.
 6. Write a function that tests whether a string is a palindrome.
 7. Write three functions that compute the sum of the numbers in a list: using a for-loop, a while-loop and recursion.
 8. Write a function on_all that applies a function to every element of a list. Use it to print the first twenty perfect squares.
 9. Write a function that concatenates two lists.
 10.    Write a function that combines two lists by alternatingly taking elements, e. g. [a,b,c], [1,2,3] → [a,1,b,2,c,3].
 11.    Write a function that merges two sorted lists into a new list.
 12.    Write a function that computes the list of the first 100 Fibonacci numbers.
 13.    Write a function that takes a number and returns a list of its digits.
 14.    Write functions that add, subtract, and multiply two numbers in their digit-list representation (and return a new digit list). If you’re ambitious you can implement Karatsuba multiplication. Try [different bases](https://en.wikipedia.org/wiki/Radix). What is the best base if you care about speed?
 15.    Implement the following sorting algorithms: Selection sort, Insertion sort, Merge sort, Quick sort, Stooge Sort. Check Wikipedia for descriptions.
 16.    Implement binary search.
 17.    Write a function that takes a list of strings an prints them, one per line, in a rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"] gets printed as:

```
*********
* Hello *
* World *
* in    *
* a     *
* frame *
*********
```

 18.    Write function that translated a text to Pig Latin and back. English is translated to Pig Latin by taking the first letter of every word, moving it to the end of the word and adding ‘ay’. “The quick brown fox” becomes “Hetay uickqay rownbay oxfay”.

## Intermediate

 1. Write a program that outputs all possibilities to put + or - or nothing between the numbers 1,2,…,9 (in this order) such that the result is 100. For example 1 + 2 + 3 - 4 + 5 + 6 + 78 + 9 = 100.
 2. Write a program that takes the duration of a year (in fractional days) for an imaginary planet as an input and produces a leap-year rule that minimizes the difference to the planet’s solar year.
 3. Implement a datastructure for graphs that allows modification (insertion, deletion). It should be possible to store values at edges and nodes. It might be easiest to use a dictionary of (node, edgelist) to do this.
 4. Write a function that generates a DOT representation of a graph.
 5. Write a program that automatically generates essays for you.
     1. Using a sample text, create a directed (multi-)graph where the words of a text are nodes and there is a directed edge between u and v if u is followed by v in your sample text. Multiple occurrences lead to multiple edges.
     2. Do a random walk on this graph: Starting from an arbitrary node choose a random successor. If no successor exists, choose another random node.
 6. Write a program that automatically converts English text to Morse code and vice versa.
 7. Write a program that finds the longest palindromic substring of a given string. Try to be as efficient as possible!

## Advanced

 1. Given two strings, write a program that efficiently finds the longest common subsequence.
 2. Given an array with numbers, write a program that efficiently answers queries of the form: “Which is the nearest larger value for the number at position i?”, where distance is the difference in array indices. For example in the array [1,4,3,2,5,7], the nearest larger value for 4 is 5. After linear time preprocessing you should be able to answer queries in constant time.
 3. Given two strings, write a program that outputs the shortest sequence of character insertions and deletions that turn one string into the other.
 4. Write a function that multiplies two matrices together. Make it as efficient as you can and compare the performance to a polished linear algebra library for your language. You might want to read about [Strassen’s algorithm](https://en.wikipedia.org/wiki/Strassen_algorithm) and the effects CPU caches have. Try out different matrix layouts and see what happens.
 5. Given a set of d-dimensional rectangular boxes, write a program that computes the volume of their union. Start with 2D and work your way up.

## GUI

 1. Write a program that displays a bouncing ball.
 2. Write a [Memory](https://en.wikipedia.org/wiki/Memory_%28game%29) game.
 3. Write a Tetris clone

## Open Ended

 1. Write a program that plays Hangman as good as possible. For example you can use a large dictionary like [this](http://wordlist.sourceforge.net/) and select the letter that excludes most words that are still possible solutions. Try to make the program as efficient as possible, i.e. don’t scan the whole dictionary in every turn.
 2. Write a program that plays Rock, Paper, Scissors better than random against a human. Try to exploit that humans are very bad at generating random numbers.
 3. Write a program that plays Battle Ship against human opponents. It takes coordinates as input and outputs whether that was a hit or not and its own shot’s coordinates.


