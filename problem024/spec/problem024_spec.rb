require "problem024"

describe Problem024 do
  subject { Problem024 }
  
  it "0, 1 to lexicographic order" do
    digits = %w[0 1]
    permutation = %w[01 10]
    subject.lexicographic_order(digits).should == permutation
  end
  
  it "1, 2 to lexicographic order" do
    digits = %w[1 2]
    permutation = %w[12 21]
    subject.lexicographic_order(digits).should == permutation
  end

  it "1, 2, 3 to lexicographic order" do
    digits = %w[1 2 3]
    permutation = %w[123 132 213 231 312 321]
    subject.lexicographic_order(digits).should == permutation
  end
  
#  it "0, 1, 2, 3 to lexicographic order" do
#    digits = %w[0 1 2 3]
#    permutation = %w[012 021 102 120 201 210]
#    subject.lexicographic_order(digits).should == permuration
#  end
end

