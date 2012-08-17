class Problem031
#  def main(coins, sum)
    coins = [200, 100, 50, 20, 10, 5, 2, 1]
    sum = 200
    [1].repeated_combination(200)
    [1, 2].repeated_combination(199)
    [1, 2, 5].repeated_combination(195)
    [1, 2, 5, 10].repeated_combination(190)
    [1, 2, 5, 10, 20].repeated_combination(180)
    [1, 2, 5, 10, 20, 50].repeated_combination(150)
    [1, 2, 5, 10, 20, 50, 100].repeated_combination(100)
    [1, 2, 5, 10, 20, 50, 100, 200].repeated_combination(1)
    #ary = []
    #coins.sort!
    #coins.each_with_index do |coin, index|
    #1.upto(sum) {|n| p n; coins.repeated_combination(n) {|com| ary << com } }
    1.upto(sum) do |n|
      p n
      coins.repeated_combination(n).count {|a| a.inject(0) {|v, i| v += i } == sum }
    end
    #end
    #ary.uniq.count {|a| a.inject(0) {|v, i| v += i } == sum }
#  end
end

