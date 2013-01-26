#!/usr/bin/env ruby

class Integer
  def sort
    self.to_s.split(//).sort.join.to_i
  end
end

def p052
  1.upto(10 ** 10) do |i|
    1.sort
  end
end

require 'benchmark'
Benchmark.bm {|x|
  x.report { p052 }
}
