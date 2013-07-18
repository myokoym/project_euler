#!/usr/bin/env ruby

def problem73(max_d)
  max_v = (1.0 / 2)
  min_v = (1.0 / 3)

  1.upto(max_d).inject(0) do |sum, n|
    current_min_d = n * 2
    current_max_d = (max_d < (n * 3)) ? max_d : (n * 3)

    sum + (current_min_d..current_max_d).count do |d|
      v = n.to_f / d
      v < max_v && v > min_v && Rational(n, d).numerator == n
    end
  end
end

# example
p problem73(8)

# test
require "benchmark"
Benchmark.bm do |x|
  1.upto(3) do |i|
    max_d = 10 ** i
    x.report { p [max_d, problem73(max_d)] }
  end
  x.report { p [12_000, problem73(12_000)] }
end
