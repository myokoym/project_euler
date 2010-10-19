class Problem023
  def self.proper_divisors(n)
    raise ArgumentError unless n.is_a?(Integer)
    divisors = [1]
    2.upto(n / 2) do |m|
      divisors << m if n % m == 0
    end
    divisors
  end
  
  def self.sum_of_proper_divisors(n)
    self.proper_divisors(n).inject(0) {|r, i| r + i }
  end
  
  def self.perfect_number?(n)
    self.sum_of_proper_divisors(n) == n ? true : false
  end
  
  def self.abundant_number?(n)
    self.sum_of_proper_divisors(n) > n ? true : false
  end
  
  def self.mayn
    1.upto(100) do |n|
      p n if self.abundant_number?(n)
    end
  end
end

