require "problem019"

describe Problem019 do
  it "play" do
  end
end

describe Week do
  subject { Week.new }
  
  it "when init to 0" do
    subject.week.should == 0
  end
  
  it "0 + 10 = 3" do
    subject.ago(10).week.should == 3
  end
end

