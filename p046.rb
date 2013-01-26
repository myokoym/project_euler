#! ruby

require 'prime'

max = 100000
nums = 3.step(max, 2).reject {|v| Prime.prime?(v) }

nums.each do |n|
  flag = false
  Prime.each(n) do |p|
    if Math.sqrt((n - p) / 2) % 1 == 0
      flag = true
      break
    end
  end
  unless flag
    p n
    exit
  end
end

