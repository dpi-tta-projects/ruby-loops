# countdown.rb
#
# Goal:
#   Print a countdown from 5 to 1, then "Liftoff! 🚀"
#
# Expected Output:
#   Launch in 5...
#   Launch in 4...
#   Launch in 3...
#   Launch in 2...
#   Launch in 1...
#   Liftoff! 🚀
#

i = 5
while i > 0 do
  puts "Launch in #{i}..."
  i -= 1
end

puts "Liftoff! 🚀"
