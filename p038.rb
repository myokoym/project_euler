#! ruby

ans = []
1.upto(0 / 0.0) do |n|
  a = Array.new(2) { n }.map.with_index {|v, i| (v * (i + 1)).to_s }.join
  break if a.size > 9
  2.upto(0 / 0.0) do |m|
    a = Array.new(m) { n }.map.with_index {|v, i| (v * (i + 1)).to_s }.join
    break if a.size > 9
    next unless a.size == 9
    if a.split(//).sort.join == (1..9).to_a.join
      ans << a
    end
  end
end

p ans
p ans.max

