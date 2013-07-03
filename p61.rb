#!/usr/bin/env ruby

def four_digit_numbers(&block)
  numbers = 1.upto(Float::INFINITY).lazy.map(&block)
  start_index = numbers.find_index {|n| n >= 1000 }
  end_index = numbers.find_index {|n| n >= 10000 }
  numbers.take(end_index).to_a[start_index, end_index]
end

triangles   = four_digit_numbers {|n| n * (n + 1) / 2 }
squares     = four_digit_numbers {|n| n ** 2 }
pentagonals = four_digit_numbers {|n| n * (3 * n - 1) / 2 }
hexagonals  = four_digit_numbers {|n| n * (2 * n - 1) }
heptagonals = four_digit_numbers {|n| n * (5 * n - 3) / 2 }
octagonals  = four_digit_numbers {|n| n * (3 * n - 2) }

def add(numbers)
  Proc.new do |set|
    new_sets = []
    numbers.each do |n|
      new_set = [set, n].flatten
      if new_set.permutation.any? do |orders|
           orders.each_cons(2).all? {|a, b| a.to_s[2..3] == b.to_s[0..1] }
         end
        new_sets << new_set
      end
    end
    new_sets
  end
end

p triangles.lazy.map {|v| v }
  .flat_map(&add(squares))
  .flat_map(&add(pentagonals))
  .flat_map(&add(hexagonals))
  .flat_map(&add(heptagonals))
  .flat_map(&add(octagonals)).select {|numbers|
    numbers.permutation.any? do |orders|
      orders.each_cons(2).all? {|a, b| a.to_s[2..3] == b.to_s[0..1] } and
      orders[-1].to_s[2..3] == orders[0].to_s[0..1]
    end
  }.first.inject(:+)
