#!/usr/bin/env ruby
# 5桁の数 16807 = 7^5は自然数を5乗した数である. 同様に9桁の数 134217728 = 8^9も自然数を9乗した数である.
# 
# 自然数を n 乗して得られる n 桁の正整数は何個あるか?

# introduction
p 7 ** 5
p 8 ** 9

answer = []
1.upto(10000) do |number|
  1.upto(100) do |power|
    powerd_number = number ** power
    size = powerd_number.to_s.size
    if power == size
      answer << powerd_number
    elsif power > size
      break 
    end
  end
end

p answer.count
p answer
