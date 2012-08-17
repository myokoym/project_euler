#! ruby

max = 1000

#ans = Hash[*Array.new(1000) {|i| [i + 1, 0] }.flatten(1)]
ans = (0..max).to_a.fill(0)
1.upto(max) do |a|
  a.upto(max) do |b|
    c = Math.hypot(a, b)
    next unless c % 1 == 0
    p = a + b + c
    next unless p <= max
    p p
    ans[p] += 1
  end
end

p ans.max
p ans.rindex {|v| v == ans.max }

__END__
8
840

