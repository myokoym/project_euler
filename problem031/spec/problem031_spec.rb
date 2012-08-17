require 'rspec'
require_relative "../problem031"

describe Problem031 do
  subject { Problem031.new }
 
  it "coin: 2, 1. sum: 4" do
    subject.main([2, 1], 4).should == 3
  end
 
  it "coin: 5, 3, 2, 1. sum: 5" do
    subject.main([5, 3, 2, 1], 5).should == 6
  end
 
  it "coin: 2, 1. sum: 3" do
    subject.main([2, 1], 3).should == 2
  end

  it "coin: 1. sum: 3" do
    subject.main([1], 3).should == 1
  end

  it "coin: 1, 2, 5, 10, 20, 50, 100, 200. sum: 200" do
    puts subject.main([200, 100, 50, 20, 10, 5, 2, 1], 200)
  end
end

