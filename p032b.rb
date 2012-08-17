require 'set'

s = Set.new

class Array
  def pandigital?(r = 1..9)
    r = r.to_a unless r.instance_of?(self.class)
    self.sort == r.sort
  end
end

class Integer
  def digits(base = 10)
    self.to_s(base).split(//).map {|v| v.to_i }
  end
end

1.upto(99) do |a|
  a.upto(9999) do |b|
    c = a * b
    digits = [c, a, b].map {|v| v.digits }.flatten
    break if digits.length > 9
    if digits.pandigital?(1..9)
      s << c
    end
  end
end

puts s.reduce(:+)

