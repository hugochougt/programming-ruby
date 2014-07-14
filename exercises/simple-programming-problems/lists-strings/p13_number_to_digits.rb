# Write a function that takes a number and returns a list of its digits.

def number_to_digits(num)
  digits = Array.new

  while num > 0
    digits << num % 10
    num /= 10
  end

  digits.reverse
end

