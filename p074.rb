#!/usr/bin/env ruby

def sum_of_factorial_of_digits(n)
  n.to_s.split(//).inject(0) do |sum, digit|
    digit = digit.to_i
    sum + ((digit == 0) ? 1 : (1..digit).inject(:*))
  end
end

def chain_of_non_repeating_terms(n)
  terms = []
  term = n
  loop do
    terms << term
    term = sum_of_factorial_of_digits(term)
    break if terms.include?(term)
  end
  terms
end

# example
p sum_of_factorial_of_digits(145)
p sum_of_factorial_of_digits(169)
example = chain_of_non_repeating_terms(69)
p example
p example.count

# test
require "benchmark"
Benchmark.bm do |x|
  x.report do
    answer = (1...1_000_000).select do |i|
                chain_of_non_repeating_terms(i).count == 60
              end
    p answer
    p answer.count
  end
end
