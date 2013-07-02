#!/usr/bin/env ruby
# 素数3, 7, 109, 673は非凡な性質を持っている. 任意の2つの素数を任意の順で繋げると, また素数になっている. 例えば, 7と109を用いると, 7109と1097の両方が素数である. これら4つの素数の和は792である. これは, このような性質をもつ4つの素数の集合の和の中で最小である.
#
# 任意の2つの素数を繋げたときに別の素数が生成される, 5つの素数の集合の和の中で最小のものを求めよ.

require "prime"

MAX = 700

add_digit = Proc.new do |pair|
  trios = []
  Prime.each(MAX) do |p|
    next if pair[-1] >= p
    next if pair.include?(p)
    ng = false
    pair.each do |num|
      unless [num, p].permutation(2).all? do |x, y|
               Prime.prime?("#{x}#{y}".to_i)
             end
        ng = true
        break
      end
    end
    next if ng
    trios << [pair, p].flatten
  end
  trios
end

p Prime.each(MAX).lazy.map {|v| [v] }
  .flat_map(&add_digit)
  .flat_map(&add_digit)
  .flat_map(&add_digit).first
