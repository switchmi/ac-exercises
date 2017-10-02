def display_board(array)
  puts "#{array[0]} | #{array[1]} | } #{array[2]}"
  puts "#{array[3]} | #{array[4]} | } #{array[5]}"
  puts "#{array[6]} | #{array[7]} | } #{array[8]}"
end

board = [ 0,1,2,3,4,5,6,7,8]

player_1 = 'X'
player_2 = 'O'


players = [ player_1, players_2].cycle #cycle the players btw 1 and 2. enumerable

def play_game #becomes the trunk but have to move variables fr outside to inside
  loop do

loop do
display_board(board)
puts "Please enter your input"
input = gets.chomp

if input == 'exit'
  break
elsif input = #something else
  end
end
