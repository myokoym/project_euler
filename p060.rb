#!/usr/bin/env ruby
# 素数3, 7, 109, 673は非凡な性質を持っている. 任意の2つの素数を任意の順で繋げると, また素数になっている. 例えば, 7と109を用いると, 7109と1097の両方が素数である. これら4つの素数の和は792である. これは, このような性質をもつ4つの素数の集合の和の中で最小である.
#
# 任意の2つの素数を繋げたときに別の素数が生成される, 5つの素数の集合の和の中で最小のものを求めよ.

require "prime"

MAX = 700

e2 = Prime.each(MAX).select(&:odd?).combination(2).lazy.select {|*a|
  [*a].flatten.permutation(2).all? do |x, y|
      Prime.prime?("#{x}#{y}".to_i)
  end
}.tap {|v| p v.to_a }.flat_map {|pair|
  trios = []
  Prime.each(MAX).map do |p|
    next if pair[-1] >= p
    next if pair.include?(p)
    ary = [pair, p].flatten
    if ary.permutation(2).all? {|x, y| Prime.prime?("#{x}#{y}".to_i) }
      trios << ary
    end
  end
  trios
}.tap {|v| p v.to_a }.flat_map {|pair|
  trios = []
  Prime.each(MAX).map do |p|
    next if pair[-1] >= p
    next if pair.include?(p)
    ary = [pair, p].flatten
    if ary.permutation(2).all? {|x, y| Prime.prime?("#{x}#{y}".to_i) }
      trios << ary
    end
  end
  trios
}.tap {|v| p v.to_a }.flat_map {|pair|
  trios = []
  Prime.each(MAX).map do |p|
    next if pair[-1] >= p
    next if pair.include?(p)
    ary = [pair, p].flatten
    if ary.permutation(2).all? {|x, y| Prime.prime?("#{x}#{y}".to_i) }
      trios << ary
    end
  end
  trios
}

p e2.first
