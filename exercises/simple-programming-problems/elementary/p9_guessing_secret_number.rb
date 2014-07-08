# Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether his number was too large or too small. At the end the number of tries needed should be printed. I counts only as one try if the user inputs the same number consecutively.

guessing_time = 0
prev_guessing = -1
the_secret_number = Random.new.rand(9999)

puts "Enter a number >= 0 (game will QUIT after enter a negative)" 

while (num = gets.chop.to_i) > 0
  next if num == prev_guessing
  guessing_time += 1

  if num > the_secret_number
    puts "Too GREAT"
  elsif num < the_secret_number
    puts "Too SMALL"
  else
    puts "Bingo!!"
    break
  end

  prev_guessing = num
end

puts "You guessed #{guessing_time} times!"
