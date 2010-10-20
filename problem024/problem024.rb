class Problem024
  def self.lexicographic_order(digits)
    return [digits[0] + digits[1], digits[1] + digits[0]]
  end
end

