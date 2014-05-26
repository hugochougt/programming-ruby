word_list = File.open("wordlist")
word_in_error = catch (:done) do
  result = []
  while line = word_list.gets
    word = line.chomp
    throw(:done, word) unless word =~ /^\w+$/
    result << word
  end
  puts result.reverse
end

puts "Failed: '#{word_in_error}' found, but a word was expected" if word_in_error
