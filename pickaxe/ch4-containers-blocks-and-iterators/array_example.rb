
# The two-period form includes the end position; the three-period form does not.

a = [1, 3, 4, 5, 9]
p a[1..3]   # => [3, 4, 5]
p a[1...3]  # => [3, 4]
p a[3..3]   # => [5]
p a[3...3]  # => []
p a[-3..-1] # => [4, 5, 9]
p a[5..2]   # => []

# If the index to []= is two numbers (a start and a length) or a range, then those elements in the original array are replaced by whatever is on the right side of the assignment.

b = [1, 3, 5, 7, 9]
b[2, 2] = 'cat'     # => [1, 3, "cat", 9]
b[2, 0] = 'dog'     # => [1, 3, "dog", "cat", 9], equals to insert if length is 0
b[1, 1] = [9, 8, 7] # => [1, 9, 8, 7, "dog", "cat", 9]
b[0..3] = []        # => ["dog", "cat", 9]
b[5..6] = 99, 98    # => ["dog", "cat", 9, nil, nil, 99, 98], gaps will be filled with nil
