# Write a function that checks whether an element occurs in a list.

def contains?(list, element)
  list.each { |item| return true if item == element }
  return false
end

