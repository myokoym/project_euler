require "problem015"

describe Problem015 do
  subject { Problem015.new }
  
  it "2 * 2 to 6 by f" do
    subject.f(2, 2).should == 6
  end
  
  it "2 * 2 to 6 by c" do
    subject.c(4, 2).should == 6
  end
  
  it "20 * 20 to ? by f" do
    p subject.f(20, 20)
  end
  
  it "20 * 20 to ? by c" do
    p subject.c(40, 20)
  end
end

