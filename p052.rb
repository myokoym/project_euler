#!/usr/bin/env ruby

class Integer
  def sort
    self.to_s.split(//).sort.join.to_i
  end
end

def p052
  1.upto(10 ** 7) do |i|
  #142857.upto(142858) do |i|
    x1 = i * 1
    x2 = i * 2
    x3 = i * 3
    x4 = i * 4
    x5 = i * 5
    x6 = i * 6
    if [x1, x2, x3, x4, x5, x6].map {|x| x.sort }.uniq.size == 1
      puts i
      break
    end
  end
end

require 'benchmark'
Benchmark.bm {|x|
  x.report { p052 }
}
