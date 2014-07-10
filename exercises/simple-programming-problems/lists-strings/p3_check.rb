# Write a function that checks whether an element occurs in a list.

def check(list, item)
  list.each { |elem| return true if elem == item }
  return false
end

arr = [4, 5, 6, 2, 0]

puts check(arr, 1)
puts check(arr, 0)
