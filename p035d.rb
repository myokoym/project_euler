#! ruby

require "prime"

ans = []
1.upto(999999) do |n|
  a = n.to_s.split(//)
  flag = true
  a.size.times do |i|
    b = a.dup
    i.times do
      t = b.shift
      b << t
    end
    flag = false unless Prime.prime?(b.join.to_i)
  end
  p ans << a.join.to_i if flag
end

p ans
p ans.size

__END__
#! ruby

def fact(n)
  n == 0 ? 1 : n * fact(n - 1)
end

a = Array.new(10) {|i| i }.map {|v| [v.to_s, fact(v)] }
facts = Hash[*a.flatten(1)]

ans =  3.upto(9999999).select {|n| n.to_s.split(//).map {|v| facts[v] }.inject(:+) == n }

p ans
p ans.inject(:+)

__END__

1.upto(10000) do |n|
  x = ("9" * n)
  y = x.split(//).map {|v| fact(v.to_i) }.inject(:+)
  if x.to_i > y
    p n
    break
  end
end

[145, 40585]
40730

