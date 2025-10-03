# secret_number.rb
#
# Goal:
#   Ask the user to guess a secret number between 1–10.
#   Keep looping until they guess it right.
#   After each wrong guess, say if it’s too high or too low.
#
# Example Output (random secret = 7):
#   Guess the secret number:
#   5
#   That's too low.
#   Guess the secret number:
#   9
#   That's too high.
#   Guess the secret number:
#   7
#   You guessed the secret number! Yay!
#

secret_number = (1..10).to_a.sample
guess = nil

while guess != secret_number do
  puts "Guess the secret number:"
  guess = gets.chomp.to_i

  if guess > secret_number
    puts "That's too high."
  elsif guess < secret_number
    puts "That's too low."
  else
    puts "You guessed the secret number! Yay!"
  end
end
