#SETTING UP
hash = {1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9}
options = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'exit']
win = false
continue = true
player = 1


#draw board
#display board
def display_board(hash)
  puts ' ' * 3 + "#{hash[1]}|#{hash[2]}|#{hash[3]}"
  puts ' ' * 3 + '-' * 5
  puts ' ' * 3 + "#{hash[4]}|#{hash[5]}|#{hash[6]}"
  puts ' ' * 3 + '-' * 5
  puts ' ' * 3 + "#{hash[7]}|#{hash[8]}|#{hash[9]}"
  puts ' ' * 3 + '-' * 5
  puts ' ' * 8
end

#assign X to player or mover
def player_toggle(player)
  player == 1 ? 2 : 1
end

#RESULTS
#8Wins, 3 scenarios
	#Vertical win  147, 258, 369
	#Horizontal win 123, 456, 789
	#Diagonal win 159, 357

def check_win(answer)
  if answer.include?(1) && answer.include?(2) && answer.include?(3)
    true
  elsif answer.include?(1) && answer.include?(4) && answer.include?(7)
    true
  elsif answer.include?(1) && answer.include?(5) && answer.include?(9)
    true
  elsif answer.include?(2) && answer.include?(5) && answer.include?(8)
    true
  elsif answer.include?(3) && answer.include?(5) && answer.include?(7)
    true
  elsif answer.include?(3) && answer.include?(6) && answer.include?(9)
    true
  elsif answer.include?(4) && answer.include?(5) && answer.include?(6)
    true
  elsif answer.include?(7) && answer.include?(8) && answer.include?(9)
    true
  else
    false
  end
end

# Test cases for check win
def tester()
  winning_hash = { 1 => 1, 2 => 2, 3 => 'X', 4 => 'O', 5 => 'X', 6 => 'O', 7 => 'X', 8 => 'X', 9 => 'O' }.select { |k,v| v == 'X' }.keys.sort
  losing_hash = { 1 => 'O', 2 => 'O', 3 => 'X', 4 => 'X', 5 => 'O', 6 => 'O', 7 => 7, 8 => 'X', 9 => 'O' }.select { |k,v| v == 'O' }.keys.sort
  # draw_hash = { 1 => 'X', 2 => 'X', 3 => 'O', 4 => 'O', 5 => 'O', 6 => 'X', 7 => 'X', 8 => 8, 9 => 9 }  X : 1267  O : 345
  draw_hash = { 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9 }.select { |k,v| v == 'X' }.keys.sort
  puts check_win(winning_hash) == true && check_win(losing_hash) == true && check_win(draw_hash) == false ? 'Tests Passed' : 'Tests Failed'
end

#GAME START
#input position
#locate index on board
# change chosen position to X or O
#Once a number is chosen, cannot be changed
#loop RESULTS
tester()
display_board(hash)
until win
  puts "Player #{player}, please input position:"
  pos = gets.chomp
  if options.index(pos) == nil
    puts "Please enter a valid Integer from 1 - 9 or 'exit' to quit."
  elsif pos == 'exit'
    continue = false
    break
  elsif hash[pos.to_i] == 'X' || hash[pos.to_i] == 'O'
    puts "Position #{pos} has been chosen. Please choose another."
  else
    hash[pos.to_i] = player == 1 ? 'X' : 'O'
    display_board(hash)
    selection = player == 1 ? hash.select { |k,v| v == 'X' }.keys.sort : hash.select { |k,v| v == 'O' }.keys.sort
    break if selection.length == 4 && player == 2
    win = check_win(selection) ? true : false
    break if win
    player = player_toggle(player)
  end
end
if continue
  puts win ? "Player #{player} is the winner!" : "It's a tie!"
else
  puts "Game Over."
end

#Exit
	#If input exit, leave game at anytime
