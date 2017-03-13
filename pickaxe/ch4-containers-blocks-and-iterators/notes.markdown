Mastery of arrays and hashes is key to being an effective Ruby programmer.

## Arrays

Arrays are indexed using the [] operator. As with most Ruby operators, this is actually a method (an instance method of class Array) and hence can be overridden in subclasses.

[]= IS a operator, which lets you set elements in the array.

You can treat arrays as stacks, sets, queues, dequeues, and FIFO queues by using other useful methods of Array class, such as push and pop, unshift and shift, first and last, etc.

## Hashes

Ruby remembers the order in which you add items to a hash. When you subsequently iterate over the entries, Ruby will return them in that order.

## Unit Test

任何继承了 Test::Unit::TestCase 的类，any methods whose names start with **test** are automatically run by the testing framework.

## Blocks

Parameters to a block are **always** local to a block, even if they have the same name as locals in the surrounding scope.

A Ruby iterator is simply a method that can invoke a block of code.

不定参数：`*args`

定义类方法：在变量方法前加 `self.`

## closure

Variables in the surrounding scope that are referenced in a block remain accessible for the life of that block and the life of any *Proc* object created from the block.
