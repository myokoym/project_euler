#!ruby

require 'prime'

x = 1
s = 2
all = 1
prime = 0 
loop do
  4.times do
    x += s
    all += 1
    prime += 1 if Prime.prime?(x)
  end
  prime_per = prime * 1.0 / all
  break if prime_per < 0.1
  s += 2
end

p all
p prime
p s + 1
