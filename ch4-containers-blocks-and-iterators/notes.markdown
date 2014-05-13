Mastery of arrays and hashes is key to being an effective Ruby programmer.

## Arrays

Arrays are indexed using the [] operator. As with most Ruby operators, this is actually a method (an instance method of class Array) and hence can be overridden in subclasses.

[]= IS a operator, which lets you set elements in the array.

You can treat arrays as stacks, sets, queues, dequeues, and FIFO queues by using other useful methods of Array class, such as push and pop, unshift and shift, first and last, etc.

## Hashes

Ruby remembers the order in which you add items to a hash. When you subsequently iterate over the entries, Ruby will return them in that order.

## Unit Test

任何继承了 Test::Unit::TestCase 的类，any methods whose names start with **test** are automatically run by the testing framework.
