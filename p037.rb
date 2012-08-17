#! ruby

require 'prime'

ans = []
Prime.each do |n|
  next if n < 10
  flag = true
  l = n.to_s.split(//)
  until l.empty?
    unless Prime.prime?(l.join.to_i)
      flag = false
      break
    end
    l.shift
  end
  if flag
    r = n.to_s.split(//)
    until r.empty?
      unless Prime.prime?(r.join.to_i)
        flag = false
        break
      end
      r.pop
    end
  end
  if flag
    ans << n
    p ans
  end
  break if ans.size == 11
end

p ans
p ans.inject(:+)


__END__

[23]
[23, 37]
[23, 37, 53]
[23, 37, 53, 73]
[23, 37, 53, 73, 313]
[23, 37, 53, 73, 313, 317]
[23, 37, 53, 73, 313, 317, 373]
[23, 37, 53, 73, 313, 317, 373, 797]
[23, 37, 53, 73, 313, 317, 373, 797, 3137]
[23, 37, 53, 73, 313, 317, 373, 797, 3137, 3797]
[23, 37, 53, 73, 313, 317, 373, 797, 3137, 3797, 739397]
[23, 37, 53, 73, 313, 317, 373, 797, 3137, 3797, 739397]
748317

