# Write a function that tests whether a string is a palindrome.

def palindrome?(str)
  mid = str.length / 2
  last_index = str.length - 1
  chars = str.chars
  i = 0
  while i < mid
    if chars[i] != chars[last_index - i]
      return false
    end
    i += 1
  end
  return true
end

