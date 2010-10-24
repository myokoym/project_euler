class Memo
  def initialize
    @memo = {}
  end
  
  def get_key(m, n)
    if m > n
      m.to_s + "_" + n.to_s
    else
      n.to_s + "_" + m.to_s
    end
  end
  
  def get_value(m, n)
    key = get_key(m, n)
    @memo[key]
  end
  
  def set_value(m, n, value)
    key = get_key(m, n)
    @memo[key] = value
  end
end

