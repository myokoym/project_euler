require "problem021"

describe Problem021 do
  it "220 proper divisors" do
    condition = [1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110]
    Problem021.proper_divisors(220).should == condition
  end
  
  it "284 proper divisors" do
    condition = [1, 2, 4, 71, 142]
    Problem021.proper_divisors(284).should == condition
  end

  it "d(220) = 284" do
    Problem021.d(220).should == 284
  end
  
  it "d(284) = 220" do
    Problem021.d(284).should == 220
  end
  
  it "calc" do
    p Problem021.calc
  end
end


__END__

220の約数は1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110なのでd(220) = 284である。
また、284の約数は1, 2, 4, 71, 142なのでd(284) = 220である。

