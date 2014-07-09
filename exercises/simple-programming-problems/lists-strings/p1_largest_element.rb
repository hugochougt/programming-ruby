# Write a function that returns the largest element in a list.

def largest(list)
  max = list.first
  list[1..-1].each { |item| max = item if item > max}
  max
end

