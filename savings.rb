# savings.rb
#
# Goal:
#   Save $5 per day until you reach $20.
#
# Expected Output:
#   Daily savings: $0
#   Daily savings: $5
#   Daily savings: $10
#   Daily savings: $15
#   You reached your savings goal at $20!
#

savings = 0

until savings == 20 do
  puts "Daily savings: $#{savings}"
  savings += 5
  if savings == 20
    puts "You reached your savings goal at $#{savings}!"
  end
end
