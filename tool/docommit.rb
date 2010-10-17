msg = ARGV[0]

print "The message is \"#{msg}\". Do commit okay?(y/n)>"
exit unless /^y/i =~ STDIN.gets

puts `git add .`
puts `git commit -m "#{msg}"`

print "Try to push in github. okay?(y/n)>"
exit unless /^y/i =~ STDIN.gets

puts `git push github master`

