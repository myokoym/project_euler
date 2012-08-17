#! ruby

require 'prime'

#require 'benchmark'
#benchmark.bm do |x|
#  x.report {
9.downto(1) do |n|
  (1..n).to_a.reverse.permutation do |a|
    y = a.join.to_i
    if Prime.prime?(y)
      p y
      exit
    end
  end
end
#  }
  #x.report { Prime.each(("9" * 7).to_i) {|n| n } }
#end
  
__END__

class Integer
  def digit
    self.to_s.size
  end

  def pandigital?
    self.to_s.split(//).sort.join == (1..self.digit).to_a.join
  end
end

