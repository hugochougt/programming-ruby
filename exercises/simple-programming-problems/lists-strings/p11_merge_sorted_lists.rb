# Write a function that merges two sorted lists into a new list.

def merge(sorted_lst1, sorted_lst2)
  if sorted_lst1 == nil || sorted_lst1.length == 0
    return sorted_lst2
  end

  if sorted_lst2 == nil || sorted_lst2.length == 0
    return sorted_lst1
  end

  i = 0
  j = 0
  lst = []
  while i < sorted_lst1.length && j < sorted_lst2.length
    if sorted_lst1[i] < sorted_lst2[j]
      lst << sorted_lst1[i]
      i += 1
    else
      lst << sorted_lst2[j]
      j += 1
    end
  end

  if i < sorted_lst1.length
    lst.concat sorted_lst1[i...sorted_lst1.length]
  end

  if j < sorted_lst2.length
    lst.concat sorted_lst2[j...sorted_lst2.length]
  end

  return lst
end

# NOTE: A simpler solution
# lst1.clone.concat(lst2).sort

