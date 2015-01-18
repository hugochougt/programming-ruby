# RubyConf 2014 - Enumerable for Fun & Profit by Michael Hartl

class RubyConfEnum
  def first_n_elements(enum, n)
    # i = 0
    # retval = []
    # enum.each do |k|
    #   retval << k
    #   i += 1
    #   break if i >= n
    # end
    # retval

    # enum[0...n]

    # enum.take n

    enum.first n
  end

  def any_are_odd(enum)
    # enum.each do |n|
    #   return true if n.odd?
    # end
    # false

    # enum.any? { |n| n.odd? }
    enum.any?(&:odd?)
  end

  def all_are_odd(enum)
    # enum.each do |n|
    #   return false unless n.odd?
    # end
    # true

    enum.all?(&:odd?)
  end

  def none_are_odd(enum)
    enum.none?(&:odd?)
  end

  def square_each_element(enum)
    # squares = []
    # enum.each do |n|
    #   squares << n**2
    # end
    # squares

    # enum.collect { |n| n ** 2 }

    enum.map { |n| n ** 2 }
  end

  def find_evens(enum)
    enum.select { |n| n if n.even? }
  end

  def ignore_evens(enum)
    # enum.select { |n| n unless n.even? }

    enum.reject(&:even?)
  end

  def find_first_even(enum)
    # enum.find(&:even?)
    enum.detect(&:even?)
  end

  def pairs_of_squares(enum)
    # square_pairs = []
    # enum.each do |n|
    #   square_pairs << [n, n ** 2]
    # end
    # square_pairs

    enum.inject [] do |square_pairs, n|
      square_pairs << [n, n ** 2]
    end
  end

  def more_pairs_of_squares(enum)
    squares = enum.map { |n| n ** 2}
    enum.zip(squares)
  end

  def filter_valid_email_addresses(addresses)
    valid_email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    # valid_addrs = []
    # addresses.each do |addr|
    #   valid_addrs << addr if addr =~ valid_email_regex
    # end
    # valid_addrs

    addresses.grep(valid_email_regex)
  end

  def evens_and_odds(enum)
    enum.partition(&:even?)
  end

  def first_n_primes(n)
    # primes = []
    # i = 1
    # loop do
    #   is_prime = true
    #   if i == 1
    #     is_prime = false
    #   else
    #     (2..Math.sqrt(i)).each do |k|
    #       if i % k == 0
    #         is_prime = false
    #         break
    #       end
    #     end
    #   end
    #   primes << i if is_prime
    #   i += 1
    #   break if primes.length == n
    # end
    # primes
    natural_numbers.select(&:prime?).first(n)
  end
end

def natural_numbers
  (1..Float::INFINITY).lazy
end

class Fixnum
  def prime?
    return false if self == 1
    return true if self == 2
    (2..Math.sqrt(self)).none? do |k|
      self.divisible_by?(k)
    end
  end

  def divisible_by?(n)
    self % n == 0
  end
end
