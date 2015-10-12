#Syed Atique, 4 October 2015
# Clear the screen, and present the user with a menu
puts `clear` # Backticks run things directly in the terminal
puts "*** Age Calculator ***"
puts "Please provide your date of birth: YYYY-MM-DD"
dob = gets.chomp

require 'date'
today = Date.today
dob = Date.parse(dob)

case 
  when dob.year > today.year
    puts "You are from FUTURE!!"
  when dob.year == today.year
    puts "Your age is: #{0}"
  when dob.year < today.year
  if dob.month > today.month || (dob.month == today.month && dob.day > today.day)
      age = today.year - dob.year - 1
    else 
      age = today.year - dob.year
    end
  puts "Your age is : #{age}"
  end
