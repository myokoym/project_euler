require "memo"

class Problem015
  def initialize
    @memo = Memo.new
  end
  
  def f(m, n)
    return 1 if m == 0 || n == 0
    memo_value = @memo.get_value(m, n)
    return memo_value if memo_value
    ret = f(m - 1, n) + f(m, n - 1)
    @memo.set_value(m, n, ret)
    ret
  end
  
  def c(n, r)
    def c_f(a, b)
      a.downto(b).inject{|result, item| result * item}
    end
    c_f(n, n - r + 1) / c_f(r, 1)
  end
end

