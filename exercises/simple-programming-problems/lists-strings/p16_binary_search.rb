# Implement binary search.

def binary_search(sorted_list, target)
  low = 0
  high = sorted_list.length - 1
  
  while low <= high
    mid = (low + high) / 2

    if target > sorted_list[mid]
      low = mid + 1
    elsif target < sorted_list[mid]
      high = mid - 1
    else
      return mid
    end
  end

  return -1
end

