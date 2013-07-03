#!/usr/bin/env ruby

class Integer
  def sort
    to_s.split(//).sort.join.to_i
  end
end

def some_digit_cubes(digit)
  cubes = 1.upto(Float::INFINITY).lazy.map {|n| n ** 3 }
  start_index = cubes.find_index {|n| n >= 10 ** (digit - 1) }
  end_index   = cubes.find_index {|n| n >= 10 ** digit }
  cubes.take(end_index).to_a[start_index, end_index]
end

def cubic_permutations(count)
  1.upto(Float::INFINITY) do |digit|
    puts "digit: #{digit}" # debug print
    current_digit_cubes = some_digit_cubes(digit)
    sorted_cubes = current_digit_cubes.map {|cube| cube.sort }
    answer = current_digit_cubes.select do |cube|
               sorted_cubes.count(cube.sort) == count
             end
    return answer if answer.any?
  end
end

# example
p cubic_permutations(3)

# answer
p cubic_permutations(5)
