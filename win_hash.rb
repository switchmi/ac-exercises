win_hash = { 1 => {2 => 1, 4 => 1, 5 => 1}, 2 => { 5 => 1, 1 => 1, 3 => 1}, 3 => {2 => 1, 5 => 1, 6 => 1} }

puts "Please enter a number"
selection = gets.chomp.to_i
# puts 'Please enter second_selection'
# second_selection = gets.chomp.to_i
# puts win_hash[selection].select {|k, v| v == 1}.include?(second_selection)
com_selection = win_hash[selection].select {|k, v| v == 1}.keys.sample
puts com_selection
