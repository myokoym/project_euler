require "problem023"

describe Problem023 do
  subject { Problem023 }
  
  it "220 proper divisors" do
    condition = [1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110]
    subject.proper_divisors(220).should == condition
  end
  
  it "284 proper divisors" do
    condition = [1, 2, 4, 71, 142]
    subject.proper_divisors(284).should == condition
  end
  
  it "12 of sum of proper divisors to 16" do
    subject.sum_of_proper_divisors(12).should == 16
  end
  
  it "28 is perfect number" do
    subject.perfect_number?(28).should be_true
  end
  
  it "27 is not perfect number" do
    subject.perfect_number?(27).should be_false
  end
  
  it "12 is abundant number" do
    subject.abundant_number?(12).should be_true
  end
  
  it "28 is not abundant number" do
    subject.abundant_number?(28).should be_false
  end
  
  it "run" do
    subject.mayn
  end
end

