class Problem026
  def mayn(d_limit)
    max = 0
    d_in_max = 0
    1.upto(d_limit) do |d|
      if 1 % d != 0
        e = nil
        1.upto(d) do |n|
          if ((10 ** n) % d) == 1
            e = n
            if e > max
              max = e
              d_in_max = d
            end
            break
          end
        end
      end
    end
    {"d" => d_in_max, "n" => max} 
  end
end

