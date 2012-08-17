#! ruby

buns = []
10.upto(99) do |i|
  i.upto(99) do |j|
    buns << [i, j]
  end
end

results = []
buns.each do |bun|
  1.upto(9) do |i|
    #after = bun.map {|v| v.to_s.delete(i.to_s) }
    #if n[0] != n[1] && n[0] != d[0] && [n, d].map {|v| Rational(v[0], v[1]) }.eql?
    x1, x2 = bun[0].to_f, bun[1]
    y1, y2 = bun[0].to_s.delete(i.to_s).to_f, bun[1].to_s.delete(i.to_s).to_i
    if x1 != x2 && x1 != y1 && x1 / x2 == y1 / y2 
      results << bun 
    end
  end
end

p results

bunshis = []
bunbos = []
results.each {|a| bunshis << a[0]; bunbos << a[1] }
bunshi = bunshis.inject(:*)
bunbo = bunbos.inject(:*)

require "mathn"
p bunshi / bunbo
p Rational(bunshi, bunbo) # 1.8Írequire "rational"ªKv


__END__



buns = []

10.upto(99) do |i|

  i.upto(99) do |j|

    buns << [i, j]

  end

end



results = []

buns.each do |bun|

  1.upto(9) do |i|

    x1, x2 = bun[0].to_f, bun[1]

    y1, y2 = bun[0].to_s.delete(i.to_s).to_f, bun[1].to_s.delete(i.to_s).to_i

    if x1 != x2 && x1 != y1 && x1 / x2 == y1 / y2 

      results << bun 

    end

  end

end



p results



bunshis = []

bunbos = []

results.each {|a| bunshis << a[0]; bunbos << a[1] }

bunshi = bunshis.inject(:*)

bunbo = bunbos.inject(:*)

# ñªirequire "mathn" àµ­Í RationalNXðg€j

require "mathn"

p bunshi / bunbo

p Rational(bunshi, bunbo) # 1.8Írequire "rational"ªKv



__END__



C:\WINDOWS\system32\cmd.exe /c ruby p033.rb

[[16, 64], [19, 95], [26, 65], [49, 98]]

100

Hit any key to close this window...


