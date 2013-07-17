#!/usr/bin/env ruby

def problem71(max_d)
  answer = 0
  upper_limit = (3.0 / 7)
  1.upto(max_d) do |n|
    ((n / upper_limit).round).upto(max_d) do |d|
      r = Rational(n, d)
      if (n.to_f / d) < upper_limit && r.numerator == n
        answer = r if r > answer 
        break
      end
    end
  end
  answer
end

# example
p problem71(8)

# test
require "benchmark"
Benchmark.bm do |x|
  1.upto(6) do |i|
    max_d = 10 ** i
    x.report { p [max_d, problem71(max_d)] }
  end
end
