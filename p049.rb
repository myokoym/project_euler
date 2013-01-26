require 'prime'
ans = []
Prime.each(9999).select {|v| v >= 1000 }.each do |n|
  a = n.to_s.split(//).permutation.map {|v| v.join.to_i }.select {|v| Prime.prime?(v) && v.to_s.size == 4 }.combination(3).select {|v|
      v.sort
      v[0] != v[1] && v[2] - v[1] == v[1] - v[0]
  }.sort.uniq
  unless a.empty?
    ans << a 
  end
end
p ans.map {|v| v.flatten.sort.join }.uniq

__END__

.permutation.map {|v| v.join.to_i }.select {|v| Prime.prime?(v) }.combination(3).count


