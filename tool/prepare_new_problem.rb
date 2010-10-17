require 'fileutils'
include FileUtils

num = ARGV[0]

# check to argument of run-time.
exit unless num.size == 3 && num.to_i

mkdir("../problem#{num}")
touch("../problem#{num}/problem#{num}.rb")
mkdir("../problem#{num}/spec")
touch("../problem#{num}/spec/problem#{num}_spec.rb")

`gedit ../problem#{num}/problem#{num}.rb &`
`gedit ../problem#{num}/spec/problem#{num}_spec.rb &`

