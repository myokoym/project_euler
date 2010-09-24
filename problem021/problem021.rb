class Problem021
  def self.proper_divisors(n)
    raise ArgumentError unless n.is_a?(Integer)
    divisors = [1]
    2.upto(n / 2) do |m|
      divisors << m if n % m == 0
    end
    divisors
  end
  
  def self.d(n)
    proper_divisors(n).inject(0) {|r, i| r + i }
  end
  
  def self.get_amicable_numbers(max)
    amicable_numbers = []
    max.downto(2) do |n|
      unless amicable_numbers.include?(n)
        d = d(n)
        amicable_numbers += [n, d] if d(d) == n && n != d
      end
    end
    amicable_numbers
  end
  
  def self.calc
    amicable_numbers = get_amicable_numbers(10000)
    amicable_numbers.uniq.inject(0) {|r, i| r + i }
  end
end

