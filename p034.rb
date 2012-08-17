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

