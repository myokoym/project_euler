class Week
  def initialize(week = 0)
    @week = week
  end
  attr_reader :week
  
  def ago(days)
    @week += days
    @week = @week % 7
    self
  end
end

class Problem019
  def self.uruu?(year)
    if year % 4 == 0
      if year % 400 != 0 and year % 100 == 0
        false
      end
      true
    else
      false
    end
  end
  
  @week = Week.new(1)
  month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  count = 0
  1900.upto(2000) do |i|
    if uruu?(i)
      month[1] = 29
    else
      month[1] = 28 unless month[1] == 28
    end
    month.each do |m|
      @week.ago(m)
      count += 1 if @week.week == 0 unless i == 1900
    end
  end
  count -= 1 if @week.week == 0
  p count
end

