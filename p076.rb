#!/usr/bin/env ruby

def counting_summations(sum)
  2.upto(sum).flat_map do |size|
    (1...sum).to_a.repeated_combination(size).select do |a|
      a.inject(:+) == sum
    end
  end
end

# example
p counting_summations(5)
p counting_summations(5).count

# test
require "benchmark"
Benchmark.bm do |x|
  10.step(100, 1) do |sum|
    x.report { p [sum, counting_summations(sum).count] }
  end
end
