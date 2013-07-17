#!/usr/bin/env ruby

def problem72(max_d)
  1.upto(max_d).inject(0) do |sum, n|
    sum += (n + 1).upto(max_d).count do |d|
             Rational(n, d).numerator == n
           end
  end
end

# example
p problem72(8)

# test
require "benchmark"
Benchmark.bm do |x|
  1.upto(6) do |i|
    max_d = 10 ** i
    x.report { p [max_d, problem72(max_d)] }
  end
end
