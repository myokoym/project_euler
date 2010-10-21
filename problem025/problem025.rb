class Problem025
  def self.fibonacci_of_max_num(max)
    order = [1]
    a = 0
    b = 1
    c = nil
    loop do
      c = b
      b = a + b
      a = c
      break if b > max
      order << b
    end
    order
  end
  
  def self.fibonacci_of_first_contain_digit(digit)
    order = [1]
    a = 0
    b = 1
    c = nil
    loop do
      c = b
      b = a + b
      a = c
      order << b
      break if b.to_s.size >= digit
    end
    order
  end
  
  def self.fibonacci_of_first_contain_digit_order(digit)
    ans = self.fibonacci_of_first_contain_digit(digit)
    ans.size
  end
  
  def self.mayn
    puts self.fibonacci_of_first_contain_digit_order(1000)
  end
end

