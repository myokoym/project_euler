#!/usr/bin/env ruby

require 'prime'

def sharp2num(str, num)
  str.gsub(/#/, num.to_s)
end

def sharp2nums(str)
  results = []
  0.upto(9) do |n|
    results << sharp2num(str, n)
  end
  results.reject {|v| /^0/ =~ v }
end

def prime_count(ary)
  ary.count {|v| Prime.prime?(v.to_i) }
end

def primes(ary)
  ary.select {|v| Prime.prime?(v.to_i) }
end

def mask_pattern(str)
  0b0.upto(eval("0b#{'1' * str.size}")).map {|v| v.to_s(2) }
end

def base_pattern(digit)
  (("0".."9").to_a << "#").repeated_permutation(digit).to_a.map {|a| a.join }
end

def fight(digit)
  primes = []
  max = 0
  base_pattern(digit).reject {|v| /^\d+$/ =~ v or /^0/ =~ v }.each do |p|
    cnt = prime_count(sharp2nums(p))
    if cnt > max
      max = cnt
      puts "new champion! #{p} is #{cnt} primes!"
      primes = primes(sharp2nums(p))
    end
  end
  [max, primes.min]
end

1.upto(10) do |n|
  cnt, min = fight(n)
  if cnt >= 8
    puts "answer: #{min} (#{cnt} primes)"
    break
  end
end

__END__
cnt = prime_count(sharp2nums("#2#3#3"))

__END__
require 'benchmark'
Benchmark.bm do |x|
  1.upto(6) do |n|
    x.report { fight(n) }
  end
end

__END__
p mask_pattern("13")

p sharp2nums("#3")
p prime_count(sharp2nums("#3"))
p sharp2nums("56##3")
p prime_count(sharp2nums("56##3"))

