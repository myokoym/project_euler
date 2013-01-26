#!ruby

def kaibun?(var)
  str = var.to_s
  str == str.reverse
end

def add_by_rev(n)
  n + n.to_s.reverse.to_i
end

def count_of_ope_to_kaibun(n)
  count = 0
  x = n
  loop do
    return -1 if count >= 50
    x = add_by_rev(x)
    count += 1
    break if kaibun?(x)
  end
  count
end

a = []
0.upto(9999) do |n|
  a << n if count_of_ope_to_kaibun(n) == -1
end
p a
p a.count

__END__
p count_of_ope_to_kaibun(196)
p count_of_ope_to_kaibun(349)
p count_of_ope_to_kaibun(4994)
p count_of_ope_to_kaibun(10677)
