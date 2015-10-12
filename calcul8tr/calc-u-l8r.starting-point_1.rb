def get_input(order)
puts "Enter the #{order} number"
gets.to_f
end

def add
  get_input("1st") + get_input("2nd")
end

def subtract
  a = get_input("1st")
  b = get_input("2nd")
  a-b
end

def multiply
  a = get_input("1st")
  b = get_input("2nd")
  a*b
end

def divide
  puts "Don't you dare put 0 in."
  a = 0
  b = 0
  until !(a==0||b==0)
    a = get_input("1st")
    b = get_input("2nd")
    if a==0||b==0
      puts "I told you not to put 0 in. Try again"
    end
  end
  a/b
end

def power
  a = get_input("1st")
  b = get_input("2nd")
  a**b
end

def square
  a=get_input("1st")
  ans = Math::sqrt(a)
end

def answer (ans)
  puts "The answer is: #{ans}"
end

def menu
  # Clear the screen, and present the user with a menu
  puts `clear` # Backticks run things directly in the terminal
  puts "*** Calc-U-L8R ***"
  puts "Please choose whether to keep it simple, or push the boundaries"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def return_to_main
puts "Press enter to continue"
gets
end

def basic_calc
  # ask the user which operation they want to perform
  puts "Good choice - which simple operation do you want to perform"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  case operation
  when "a"
    answer(add)
  when "s"
    answer(subtract)
  when "m"
    answer(multiply)
  when "d"
    answer(divide)
  end
  return_to_main
end

def advanced_calc
  puts "Dangerous territory buddy - what witchcraft do you want to do with numbers?"
  print "(p)ower up, or be a (s)quare? "
  operation = gets.chomp.downcase
  case operation
  when 'p'
    answer (power)
  when 's'
    answer (square)
  end
  return_to_main
end

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  else
    puts "Please use a or b to choose an option, or press q to quit"
    return_to_main
  end
  response = menu
end