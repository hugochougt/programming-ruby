# Write a function that combines two lists by alternatingly taking elements, e. g. [a,b,c], [1,2,3] → [a,1,b,2,c,3].

def alternatingly_combine(lst1, lst2)

  if lst1.length > lst2.length
    short_lenght = lst2.length
  else
    short_lenght = lst1.length
  end

  com_lst = []
  i = 0
  while i < short_lenght
    com_lst << lst1[i] << lst2[i]
    i += 1
  end

  if lst1.length > lst2.length
    com_lst.concat lst1[i, lst1.length - 1]
  else
    com_lst.concat lst2[i, lst2.length - 1]
  end

  return com_lst
end

