# def check_neg()
#   puts "Enter a number"
#   number = gets.chomp
#   if number < 0
#     print "#{number} is a negative"
#   else
#     print "#{number} is positive"
#   end
# end
# check_neg()

# def respond_to_grade(grade)
puts "Please input grade!"
grade = gets.chomp
  case grade
  when "A"
    puts 'Well done!'
  when "B"
    puts 'Try harder!'
  when "C"
    puts 'You need help!!!'
  else
    puts "You just making it up!"
  end
# end
