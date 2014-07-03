# Write a program that prints the next 20 leap years.

def is_leap_year?(year)
  return true if year % 400 == 0
  return true if year % 4 == 0 && year % 100 != 0
  return false
end

def next_leap_year_of(year)
   year.upto(year + 3).find { |y| is_leap_year? y }
end

curr_year = Time.now.year
next_leap_year = next_leap_year_of curr_year

times = 20

while times > 0
  puts "#{next_leap_year}"
  next_leap_year += 4
  times -= 1
end

