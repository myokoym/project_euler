class Problem022
  def self.read(file_path)
    File.open(file_path) {|f| f.read }
  end
  
  def self.str_to_ary(str)
    str.gsub(/[^\w,]/, "").split(/,/)
  end
  
  def self.sort(ary)
    ary.sort
  end
  
  def self.score(name)
    tbl = {"V"=>22, "K"=>11, "W"=>23, "L"=>12, "A"=>1, "X"=>24, "M"=>13, "B"=>2, "Y"=>25, "N"=>14, "C"=>3, "Z"=>26, "O"=>15, "D"=>4, "P"=>16, "E"=>5, "Q"=>17, "F"=>6, "R"=>18, "G"=>7, "S"=>19, "H"=>8, "T"=>20, "I"=>9, "U"=>21, "J"=>10}
    sum = 0
    name.split(//).each do |c|
      sum += tbl[c]
    end
    sum
  end
  
  def self.calc
    str = read("names.txt")
    ary = str_to_ary(str)
    sum = 0
    sort(ary).each_with_index do |name, i|
      sum += score(name) * (i + 1)
    end
    sum
  end
end

