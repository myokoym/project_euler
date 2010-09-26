require "problem022"

describe Problem022 do
  subject { Problem022 }
  
  it "read file" do
    path = "./spec_exsample.txt"
    raise if File.exist?(path)
    begin
      File.open(path, "w") {|f| f.puts("one potate", "two potate") }
      subject.read(path).should =~ /one potate\ntwo potate(\n)?/
    ensure
      File.delete(path) if File.exist?(path)
    end
  end
  
  it "str to array" do
    str = '"Miku","Rin","Luka"'
    subject.str_to_ary(str).should == ["Miku", "Rin", "Luka"]
  end
  
  it "sort of abc" do
    ABC = "ABC"
    BAC = "BAC"
    CAB = "CAB"
    subject.sort([CAB, BAC, ABC]).should == [ABC, BAC, CAB]
  end
  
  it "COLINは3 + 15 + 12 + 9 + 14 = 53" do
    subject.score("COLIN").should == 53
  end
  
  it "Problem022 Calculate" do
    p "answer: #{subject.calc}"
  end
end


__END__

5000個以上の名前が書かれている46Kのテキストファイルfilenames.txt を用いる. まずアルファベット順にソートせよ.

のち, 各名前についてアルファベットに値を割り振り, リスト中の出現順の数と掛け合わせることで, 名前のスコアを計算する.

たとえば, リストがアルファベット順にソートされているとすると, COLINはリストの938番目にある. またCOLINは3 + 15 + 12 + 9 + 14 = 53という値を持つ. よってCOLINは938 × 53 = 49714というスコアを持つ.

ファイル中の全名前のスコアの合計を求めよ.

