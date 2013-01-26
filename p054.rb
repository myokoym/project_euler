require_relative "../poker/poker"

#i = 0
#File.open("poker_test.txt") {|f| 
#  f.each_line do |line|
#    card = line.scan(/\w{2}/)
#    if Poker.new(line.scan(/^(\w{2} \w{2} \w{2} \w{2} \w{2})/).join).rank >
#       Poker.new(line.scan(/(\w{2} \w{2} \w{2} \w{2} \w{2})$/).join).rank
#      i += 1
#    end
#  end
#}
#p i

i = 0
File.open("poker.txt") {|f| 
  f.each_line do |line|
    p1c = line.scan(/^(\w{2} \w{2} \w{2} \w{2} \w{2})/).join
    p1r = Poker.new(p1c).rank
    p2c = line.scan(/(\w{2} \w{2} \w{2} \w{2} \w{2})$/).join
    p2r = Poker.new(p2c).rank
    #puts "#{p1r} vs #{p2r} = #{(p1r > p2r) ? "player1" : "player2"}" 
    #puts "#{p1c} vs #{p2c} = #{(p1r > p2r) ? "player1" : "player2"}" 
    i += 1 if p1r > p2r
  end
}
p i

__END__
p Poker.new("5H 5C 6S 7S KD").rank > Poker.new("2C 3S 8S 8D TD").rank
p Poker.new("5D 8C 9S JS AC").rank > Poker.new("2C 5C 7D 8S QH").rank
p Poker.new("2D 9C AS AH AC").rank > Poker.new("3D 6D 7D TD QD").rank
p Poker.new("4D 6S 9H QH QC").rank > Poker.new("3D 6D 7H QD QS").rank
p Poker.new("2H 2D 4C 4D 4S").rank > Poker.new("3C 3D 3S 9S 9D").rank

p Poker.new("5H 5C 6S 7S KD").rank
p Poker.new("2C 3S 8S 8D TD").rank
p Poker.new("5D 8C 9S JS AC").rank
p Poker.new("2C 5C 7D 8S QH").rank
p Poker.new("2D 9C AS AH AC").rank
p Poker.new("3D 6D 7D TD QD").rank
p Poker.new("4D 6S 9H QH QC").rank
p Poker.new("3D 6D 7H QD QS").rank
p Poker.new("2H 2D 4C 4D 4S").rank
p Poker.new("3C 3D 3S 9S 9D").rank


