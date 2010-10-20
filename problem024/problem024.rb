class Problem024
  #def self.lexicographic_order(digits)
  #  digitss = []
  #  (digits.size - 1).times { digitss << digits }
  #  permutation = digits.product(*digitss).reject {|a| a.uniq.size != digits.size }
  #  return permutation.map {|a| a.to_s }
  #end
  
  def self.lexicographic_order(digits)
    digits.permutation.to_a.map {|i| i.to_s }
  end
  
  def self.mayn
    # warn. hung up.
    # p permutation = self.lexicographic_order(%w[0 1 2 3 4 5 6 7 8 9])
    # puts permutation[1000000]
    %w[0 1 2 3 4 5 6 7 8 9].permutation.each_with_index do |v, i|
      p v
      break if i == 999999
    end
  end
end

