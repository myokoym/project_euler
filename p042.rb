#! ruby

class Integer
  def triangle_number?
    ((Math.sqrt(8 * self + 1) - 1) / 2) % 1 == 0
  end
end

alphabets = Hash[*("A".."Z").to_a.map.with_index {|c, i| [c, i + 1] }.flatten]

File.open("words.txt") {|f|
  p f.read.chomp.gsub("\"", "").split(/,/).count {|w| w.split(//).inject(0) {|v, i| v + alpha[i] }.triangle_number? }
}

__END__
def triangle_number(n)
  n * (n + 1) / 2
end

