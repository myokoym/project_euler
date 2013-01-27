#!ruby

enc = File.open("cipher1.txt").read.chomp.split(/,/).map(&:to_i)

def decript(enc, keys)
  dec = []
  keys.each_with_index do |v, i|
    dec << (v ^ enc[i])
  end
  dec
end

def keys(key, size)
  keys = []
  1.upto(size) do |i|
    keys << key[i % 3]
  end
  keys
end

max = 0
max_key = nil
max_dec = nil
start = 97
last = 122
start.upto(last) do |first|
  start.upto(last) do |second|
    start.upto(last) do |third|
      key = [first, second, third] 
      dec = decript(enc, keys(key, enc.size))
      alpha_size = dec.select {|v| v >= 97 && v <= 122 }.size
      if max < alpha_size
        max = alpha_size
        max_key = key
        max_dec = dec
      end
    end
  end
end
p max_dec
p max_dec.map {|v| [v].pack("C*") }.join
p max_dec.inject(:+)

__END__
a = File.open("cipher1.txt").read.chomp.split(/,/).map(&:to_i)
p a
p a.size
p a.select {|v| v >= 97 && v <= 122 }.size

key = [97, 98, 99]
keys = []
1.upto(a.size) do |i|
  keys << key[i % 3]
end

dec = []
keys.each_with_index do |v, i|
  p v, a[i]
  dec << (v ^ a[i])
end
p dec
p dec.select {|v| v >= 97 && v <= 122 }.size
#p dec.map {|v| [v].pack("C*") }.join

__END__
97.upto(122) do |first|
  97.upto(122) do |second|
    97.upto(122) do |third|
      [first, second, third].cycle(a.size).with_index do |v, i|
        p v, i if first == 122
      end
    end
  end
end
