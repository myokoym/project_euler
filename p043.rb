p (0..9).to_a.permutation(10).select {|a|
  a[1..3].join.to_i % 2 == 0 and
  a[2..4].join.to_i % 3 == 0 and
  a[3..5].join.to_i % 5 == 0 and
  a[4..6].join.to_i % 7 == 0 and
  a[5..7].join.to_i % 11 == 0 and
  a[6..8].join.to_i % 13 == 0 and
  a[7..9].join.to_i % 17 == 0
}.inject(0) {|v, i| v + i.join.to_i }
#}.map {|v| v.join.to_i }.inject(:+)

