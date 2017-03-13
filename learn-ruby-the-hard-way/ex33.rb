# Exercise 33: While Loops
i = 0
numbers = []

while i < 6
    puts "At the top i is #{i}"
    numbers.push(i)

    i += 1
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
end

puts "The numbers: "
for num in numbers
    puts num
end

# Extra Credit
def count_from_zero_to(top, step)
    i = 0
    numbers = []

    while i < top
        puts "At the top i is #{i}"
        numbers.push(i)

        i += step
        puts "Numbers now: #{numbers}"
        puts "At the bottom i is #{i}"
    end
end

count_from_zero_to(12, 3)
