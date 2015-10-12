#Syed Atique, 4 October 2015
# Clear the screen, and present the user with a menu
puts `clear` # Backticks run things directly in the terminal
puts "*Calculate how many nights there are from TODAY until Xmas morning*"
puts "Please enter to proceed"
waits = gets.chomp

require 'date'
today = Date.today
xmas_day = Date.parse("2015-12-25")

case 
 when (today.month == xmas_day.month && today.day >> xmas_day.day)
  if (today.year % 4) > 0
     nights_left = (xmas_day - today).to_i + 365
   else
    nights_left = (xmas_day - today).to_i + 366
  end
 else
   nights_left = (xmas_day - today).to_i
 end

puts "You have #{nights_left} nights left till xmas"