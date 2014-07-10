# Write function that reverses a list, preferably in place.

def reverse(list)
  # list.reverse!
  for i in (0..(list.size / 2))
    tmp = list[i]
    list[i] = list[list.size - i - 1]
    list[list.size - i -1] = tmp
  end
end

arr = [1, 2, 3, 4, 5]
reverse(arr)
p arr
