#! ruby

require 'prime'

def p050(max)
  ary = Prime.each(max).to_a
  size = ary.size
  limit = (size < 10000) ? size : 10000
  limit.downto(0) do |i|
    p i if i % 100 == 0
    0.upto(size - i) do |j|
      part = ary[(0 + j)..(-1 - (size - i) + j)]
      sum = part.inject(:+)
      break if sum > max
      if Prime.prime?(sum)
        return [i, part, sum]
      end
    end
  end
end

require 'benchmark'
Benchmark.bm {|x|
  x.report { p p050(100000) }
  x.report { p p050(200000) }
  x.report { p p050(1000000) }
}

