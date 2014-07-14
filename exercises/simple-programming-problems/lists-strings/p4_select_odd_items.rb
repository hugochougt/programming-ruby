# Write a function that returns the elements on odd positions in a list.

def select_odd_items(list)

  if list.length <= 1
    return list
  end


  odd_items = []
  list.each_with_index { |item, index| odd_items << item if index % 2 == 0}

  return odd_items
end

