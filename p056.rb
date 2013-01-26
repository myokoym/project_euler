#!ruby

def digital_sum(n)
  n.to_s.split(//).map(&:to_i).inject(:+)
end

max = 0
1.upto(99) do |a|
  1.upto(99) do |b|
    fact = a ** b
    y = digital_sum(fact)
    if max < y
      puts "new champion! *** #{fact} ***"
      max = y
    end
  end
end

p max
