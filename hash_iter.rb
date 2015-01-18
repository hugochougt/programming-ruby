arr1 = [1, 3, 5]
arr2 = [2, 4, 6]

hash = {
  odd: arr1,
  even: arr2
}

hash.each do |k, arr|
  arr.each do |item|
    puts "#{k} - #{item}"
  end
end

