def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "*** Calc-U-L8R ***"
  puts "Please chose whether to keep it simple, or push the boundaries"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end


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
end


def advanced_calc

  puts "Which complex operation do you want to perform"
  print "(S)quareroot, (P)ower of: "
  operation = gets.chomp.downcase

  case operation 
  when "p"  #power of
    print "\nWhat is the number?:"
    first_num = gets.to_f
    second_num = gets.to_f  
    puts "The answer is: #{first_num ** second_num}"
  when "s" #square root
    print "\nSquare root of what number?"
    first_num = gets.to_f
    puts " The answer is: #{Math::sqrt(first_num)} \n" # i may use Math.sqrt(variable)
  end
  puts "Hit enter to continue"
  gets
end

# run the app...

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end

response = menu
end