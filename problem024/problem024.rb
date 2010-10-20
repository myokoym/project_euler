class Problem024
  def self.lexicographic_order(digits)
    digitss = []
    (digits.size - 1).times { digitss << digits }
    permutation = digits.product(*digitss).reject {|a| a.uniq.size != digits.size }
    return permutation.map {|a| a.to_s }
  end
  
  def self.mayn
    p permutation = self.lexicographic_order(%w[0 1 2 3 4 5 6 7 8 9])
    puts permutation[1000000]
  end
end

