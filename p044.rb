#! ruby

class Integer
  def pentagonal?
    ((Math.sqrt(24 * self + 1) + 1) / 6) % 1 == 0
  end
end

def pentagonal_number(n)
  n * (3 * n - 1) / 2
end

max = 10000
pentagonal_numbers = (1..max).to_a.map {|i| pentagonal_number(i) }

#p pentagonal_numbers.all? {|v| v.pentagonal_number? }

#require 'benchmark'
#Benchmark.bm {|x|
#  x.report {
pentagonal_numbers.each do |sum|
  pentagonal_numbers.select {|v| v < sum / 2 }.each do |p1|
    p2 = sum - p1
    #s = p1 + p2
    d = p2 - p1
    #p "p:#{p} p1:#{p1} p2:#{p2} s:#{s} d:#{d}"
    #if s.pentagonal_number? && d.pentagonal_number?
    if p2.pentagonal? && d.pentagonal?
      p "sum:#{sum} p1:#{p1} p2:#{p2} d:#{d}"
      exit
    end
  end
end
#  }
=begin
  x.report {
    pentagonal_numbers.each do |p|
      pentagonal_numbers.select {|v| v < p / 2 }.each do |b|
        a = p - b
        if pentagonal_numbers.include?(a) && pentagonal_numbers.include?(a - b)
          p a - b
          break
        end
      end
    end
  }
  x.report {
    pentagonal_numbers.combination(2).sort_by {|v| v.max - v.min }.each do |a|
      #p "#{a} : #{pentagonal_numbers.include?(a.last + a.first)} : #{pentagonal_numbers.include?(a.max - a.min)}"
      s = a.first + a.last
      d = a.max - a.min
      #if [s, d].all? {|v| pentagonal_numbers.include?(v) }
      if pentagonal_numbers.include?(s) && pentagonal_numbers.include?(d)
        p d
        break
      end
    end
  }
=end
#}

__END__

pentagonal_numbers.combination(2).sort_by {|v| v.max - v.min }.each do |a|
  #p "#{a} : #{pentagonal_numbers.include?(a.last + a.first)} : #{pentagonal_numbers.include?(a.max - a.min)}"
  s = a.first + a.last
  d = a.max - a.min
  #if [s, d].all? {|v| pentagonal_numbers.include?(v) }
  if pentagonal_numbers.include?(s) && pentagonal_numbers.include?(d)
    p d
    break
  end
end

__END__

pentagonal_numbers = Hash[*(1..max).to_a.map {|i| [i, pentagonal_number(i)] }.flatten]

d = []
pentagonal_numbers.combination(2) do |a|
  d << a.last - a.first
end
p d == d.sort

