#!ruby

x = 2
# y = 1 + Rational(1, x)

a = []
999.times do |i|
  x = 2 + Rational(1, x)
  y = 1 + Rational(1, x)
  a << y if y.numerator.to_s.size > y.denominator.to_s.size
end

p a
p a.count
