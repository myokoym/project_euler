#! ruby

require 'prime'

(1..1000000).each_cons(4) do |a|
  if a.all? {|v| Prime.prime_division(v).size == 4 }
    p a
    exit
  end
end

