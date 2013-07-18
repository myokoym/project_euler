#!/usr/bin/env ruby

require "prime"

def asymptotic_farey_sequence_length(n)
  (3 * (n ** 2)) / (Math::PI ** 2)
end

def totient_function(n)
  n.prime_division.inject(n) do |sum, factor|
    p = factor.first
    sum * (1 - 1.0 / p)
  end
end

def farey_sequence_length(n)
  2.upto(n).inject(0) do |sum, d|
    sum + totient_function(d)
  end
end

# example
p [8, farey_sequence_length(8), asymptotic_farey_sequence_length(8)]

# test
require "benchmark"
Benchmark.bm do |x|
  1.upto(6) do |i|
    max_d = 10 ** i
    answer = nil
    x.report { answer = farey_sequence_length(max_d) }
    p [max_d, answer, asymptotic_farey_sequence_length(max_d)]
  end
end
