#! ruby

class Integer
  def triangle?
    ((Math.sqrt(8 * self + 1) - 1) / 2) % 1 == 0
  end

  def pentagonal?
    ((Math.sqrt(24 * self + 1) + 1) / 6) % 1 == 0
  end
end

def triangle_number(n)
  n * (n + 1) / 2
end

def pentagonal_number(n)
  n * (3 * n - 1) / 2
end

def hexagonal_number(n)
  n * (2 * n - 1)
end

max = 100000
hexagonal_numbers = Array.new(max) {|i| hexagonal_number(i + 1) }

hexagonal_numbers.each do |h|
  if h.triangle? && h.pentagonal?
    p h
  end
end

#require 'benchmark'
#Benchmark.bm {|x|
#  max = 20000000
#  x.report { Array.new(max) {|i| hexagonal_number(i + 1) }}
#  x.report { (1..max).to_a.map {|i| hexagonal_number(i) }}
#  x.report { Array.new(max) {|i| hexagonal_number(i + 1) }}
#  x.report { (1..max).to_a.map {|i| hexagonal_number(i) }}
#  x.report { Array.new(max) {|i| hexagonal_number(i + 1) }}
#  x.report { (1..max).to_a.map {|i| hexagonal_number(i) }}
#}

