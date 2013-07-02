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
}

e3 = e2.flat_map do |pair|
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
end

e4 = []
e3.each do |v|
  Prime.each(MAX).each do |p|
    next if v[-1] >= p
    next if v.include?(p)
    ary = [v, p].flatten
    if ary.permutation(2).all? {|x, y| Prime.prime?("#{x}#{y}".to_i) }
      e4 << ary
    end
  end
end

p e4.first
exit 5

e5 = []
e4.lazy.each do |v|
  Prime.each(MAX).each do |p|
    next if v[-1] >= p
    next if v.include?(p)
    ary = [v, p].flatten
    if ary.permutation(2).all? {|x, y| Prime.prime?("#{x}#{y}".to_i) }
      e5 << ary
    end
  end
end

p e5.first

__END__

require "prime"
#e4 = [[3, 7, 109, 673], [3, 11, 2069, 2297], [3, 17, 449, 2069], [3, 17, 2069, 2297], [3, 37, 67, 2377], [11, 23, 743, 1871], [11, 239, 1049, 1847], [11, 239, 1091, 1847], [23, 311, 677, 827], [23, 677, 827, 1871], [31, 1123, 2029, 2281], [269, 617, 887, 2741]]  c2 = Prime.each(3000).select(&:odd?).combination(2).lazy.select {|*a|   [*a].flatten.permutation(2).all? do |x, y|     Prime.prime?("
#{x}
#{y}".to_i)
end }  p c2.count  e3 = [] c2.each do |v|   Prime.each(3000).each do |p|     next if v[-1] >= p     next if v.include?(p)     ary = [v, p].flatten     if ary.permutation(2).all? {|x, y| Prime.prime?("
#{x}
#{y}".to_i) }       e3 << ary
end
end
end  p e3.size  e4 = [] e3.each do |v|   Prime.each(3000).each do |p|     next if v[-1] >= p     next if v.include?(p)     ary = [v, p].flatten     if ary.permutation(2).all? {|x, y| Prime.prime?("
#{x}
#{y}".to_i) }       e4 << ary
end
end
end  p e4.size p e4  e5 = [] e4.each do |v|   Prime.each(3000).each do |p|     next if v[-1] >= p     next if v.include?(p)     ary = [v, p].flatten     if ary.permutation(2).all? {|x, y| Prime.prime?("
#{x}
#{y}".to_i) }       e5 << ary
end
end
end  p e5  __END__ require "prime"  p Prime.each(1000).select(&:odd?).combination(4).lazy.select {|*a|   [*a].flatten.permutation(2).all? do |x, y|     Prime.prime?("
#{x}
#{y}".to_i)
end }.first  __END__ require "benchmark"  Benchmark.bm do |x|   x.report { 1000000.times { "
#{1}
#{2}".to_i } }
end  __END__
#!/usr/bin/env ruby
# 素数3, 7, 109, 673は非凡な性質を持っている. 任意の2つの素数を任意の 順で繋げると, また素数になっている. 例えば, 7と109を用いると, 7109と1097の 両方が素数である. これら4つの素数の和は792である. これは, このような性質を もつ4つの素数の集合の和の中で最小である.
#
# 任意の2つの素数を繋げたときに別の素数が生成される, 5つの素数の集合の和の中で最小のものを求めよ.  require "prime"
#Prime.each(673).select(&:odd?).combination(4).select do |a, b, c, d|
#problem060 = Prime.each(Float::INFINITY).select(&:odd?).combination(5).lazy.select do |a, b, c, d, e|  problem060 = Prime.each(1000).to_a.combination(4).lazy do |a, b, c, d|   [a, b, c, d].permutation(2).all? do |x, y|     Prime.prime?("
#{x}
#{y}".to_i)
end
end  problem060.first(100).each do |result|   p result
end  __END__ problem060 = Enumerator.new do |yielder|   Prime.each(1000).to_a.combination(4) do |a, b, c, d|     yielder << [a, b, c, d].permutation(2).all? do |x, y|       Prime.prime?("
#{x}
#{y}".to_i)
end
end
end  problem060.first(100).each do |result|   p result
end  __END__ require "benchmark"  Benchmark.bm do |x|   x.report { 1000000.times { "
#{1}
#{2}".to_i } }
end  __END__
[
