#! ruby

p 1.upto(1000).inject(0) {|v, i| v + i ** i }.to_s[-10..-1]

