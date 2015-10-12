# Syed Atique w1d2
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "*** Calc-U-L8R ***"
  puts "Please mention what calculator you want to use"
  print "(A)ge, (N)ight left till xmas, (M)easurement, (V)olume, (S)imple mathmetic operation OR\n (Q)uit: "
  gets.chomp.downcase
end

def age_calculation
  # Clear the screen, and present the user with a menu
  puts `clear` 
  puts "*** Age Calculator ***"
  puts "\nPlease provide your date of birth: YYYY-MM-DD"
  print "\nPlease keep the date format as indicated:"
  print "\n"

  dob = gets.chomp

  #puts "test"

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
    puts "please hit enter to continue"
    gets
end

def night_left_till_xmas
  # Clear the screen, and present the user with a menu
  puts `clear` 
  puts "*Calculate how many nights there are from TODAY until Xmas morning*"
  
  puts "Please enter to proceed"
  gets
  
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

   puts "You have #{nights_left} nights left till xmas."
   puts "please hit enter to continue"
   gets
end

def measurement_conversion
  puts `clear`
  puts "Which conversion do you want to do? \n"
  puts "(m)iles to kilometers, (f)eet to meters, (i)nches to centimeters, or"
  print "\n(k)ilometers to miles, m(e)ters to feet, (c)entimeters to inches: "
  conversion = gets.chomp.downcase
  
  print "What number to convert: "
    a = gets.chomp.to_f

  result = a * case conversion
    when 'm'
      1.6093
    when 'f'
      0.3048
    when 'i'
      2.54
    when 'k'
      0.6214
    when 'e'
      3.2808
    when 'c'
      0.3937
    end
  puts "\nThe converted result is #{result}."
  puts "please hit enter to continue"
  gets
end 

def volume_measurement
  puts `clear`
  puts "Measuring your shape: is it: "
  print "(C)ube, (S)phere: "

  shape = gets.chomp.downcase

  result = case shape
    when 'c'
     print "What's the length of its sides? "
     gets.chomp.to_f ** 3   #Another way: result = number ** 3
    when 's'
     print "What's its radius? "
     radius = gets.chomp.to_f
     (4.0 / 3.0) * Math::PI * (radius ** 3)
    end
  puts "\nThe answer is: #{result}."
  puts "please hit enter to continue"
  gets
end

def math_operation
  puts `clear`
  puts "*** Calc-U-L8R ***"
  puts "Please choose whether to keep it simple, or push the boundaries"
  print "(B)asic, (A)dvanced, or (l)eave: "
  operation_s = gets.chomp.downcase

  def basic_calc
    # ask the user which operation they want to perform
    puts "Which simple operation do you want to perform"
    print "(A)dd, (S)ubtract, (M)ultiply, (D)ivide: "
    operation = gets.chomp.downcase

    print "\nWhat is the first number?"
    first_num = gets.chomp.to_f

    print "\nWhat is the second number?"
    second_num = gets.chomp.to_f  

    case operation 
      when "a" 
       puts first_num + second_num
      when "s"
        puts first_num - second_num
      when "m" 
        puts first_num * second_num
      when "d"
        puts first_num / second_num
    end
    puts "please hit enter to continue"
    gets
  end

  def advanced_calc
    puts "Which complex operation do you want to perform"
    print "(S)quareroot, (P)ower of: "
    operation = gets.chomp.downcase

    case operation 
    when "p"  #power of
      print "\nWhat is the first number?:"
      first_num = gets.to_f
      print "\nWhat is the second number?:"
      second_num = gets.to_f  
      puts "The answer is: #{first_num ** second_num}"
    when "s" #square root
      print "\nSquare root of what number?"
      first_num = gets.to_f
      puts " The answer is: #{Math::sqrt(first_num)} \n" # i may use Math.sqrt(variable)
    end
    puts "please hit enter to continue"
    gets
  end

  #response_math_operation = operation_s
  until operation_s == 'l'
    case operation_s
    when 'b'
      basic_calc
    when 'a'
      advanced_calc
    end
    math_operation
  end

end

response = menu
until response == 'q'
  case response
  when 'a'
    age_calculation
  when 'n'
    night_left_till_xmas
  when 'm'
    measurement_conversion
  when 'v'
    volume_measurement
  when 's'
    math_operation
  else
    puts "please choose one of the options"
    sleep 1
  end
response = menu
end