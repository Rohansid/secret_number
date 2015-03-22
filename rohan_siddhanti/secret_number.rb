###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#
#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random 
#       number between 1 and 10.
#     - Ask the user for their guess.
#     - Verify if they were correct. If the player guesses correctly they win
#       the game, they should be congratulated and the game should end.
#     - If they guess incorrectly, give the player some direction. If they
#       guess too high let them know, if they guess too low, let them know.
#     - Don't forget to let your players know how many guesses they have left.
#       Your game should say something like:
#         "You have X guesses before the game is over enter a another number"
#     - If they don't guess correctly after 3 tries, display that the player
#       lost and that the game is over. Be nice and let them know what the
#       `secret_number` was.
#
###############################################################################


def secret_number
  puts "Welcome to the secret number game, created by Rohan"
  puts "What is your name?"
  player_name = gets.chomp
  puts "Hi #{player_name}!"
  puts "Welcome to the secret number game. You have three tries to guess my number, which is between 1 and 10, inclusive. Each time you guess I'l let you know if the guess was too high or too low. Good luck!"
  computer_number = Random.new.rand(1..10)


  i = 1
  until i>3 do
  puts "What is your guess?"
  user_guess = gets.chomp.to_i
    if user_guess == computer_number
    puts "Congratulations you have won the game!"
    break
    elsif user_guess < computer_number
    puts "Too low!"
    elsif user_guess > computer_number
    puts "Too high!"
    end
    puts "You have #{3 - i} guess(es) left"  
  i += 1
  end

  if i > 3 
    puts "Sorry you lost, thanks for playing. Btw the number was #{computer_number}!"
  end

end

secret_number

