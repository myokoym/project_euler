require 'rspec'
require_relative "../problem031"

describe Problem031 do
  subject { Problem031.new }
  
  it "coin: 2, 1. sum: 3" do
    subject.main([2, 1], 3).should == 2
  end
end

