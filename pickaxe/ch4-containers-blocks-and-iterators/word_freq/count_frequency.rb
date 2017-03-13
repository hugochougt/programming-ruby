
def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each { |word| counts[word] += 1 }
  counts
end
