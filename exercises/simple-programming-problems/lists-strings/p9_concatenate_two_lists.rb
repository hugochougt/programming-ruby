# Write a function that concatenates two lists.

def concatenate(list1, list2)
  lst = Array.new
  lst.concat list1
  lst.concat list2
  
  return lst
end

