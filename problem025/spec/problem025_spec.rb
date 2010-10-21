require "problem025"

describe Problem025 do
  subject { Problem025 }
  
  it "Fibonacci limit 10" do
    subject.fibonacci_of_max_num(10).should == [1, 1, 2, 3, 5, 8]
  end
  
  it "Fibonacci limit 3 digit" do
    subject.fibonacci_of_first_contain_digit(3).should == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
  end
  
  it "Fibonacci limit 3 digit order 12" do
    subject.fibonacci_of_first_contain_digit_order(3).should == 12
  end
  
  it "calc" do
    subject.mayn
  end
end


__END__

F_(1) = 1
F_(2) = 1
F_(3) = 2
F_(4) = 3
F_(5) = 5
F_(6) = 8
F_(7) = 13
F_(8) = 21
F_(9) = 34
F_(10) = 55
F_(11) = 89
F_(12) = 144

