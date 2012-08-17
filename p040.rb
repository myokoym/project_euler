#! ruby

d = ""
0.upto(0 / 0.0) do |i|
  d << i.to_s
  break if d.size > 10 ** 6
end

p 0.upto(6).inject(1) {|v, i| v * d[10 ** i].to_i }

