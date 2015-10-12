def prompt(description)
  puts "Please enter #{description}"
  gets.chomp
end

def error(code)
  puts "Error: #{code}"
end

def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "*** Calc-U-L8R ***"
  puts "Please choose whether to keep it simple, or push the boundaries"
  print "(b)asic, (a)dvanced, or (q)uit: "
  prompt("Choice").downcase
end

def basic_calc
  # ask the user which operation they want to perform
  puts "Good choice - which simple operation do you want to perform"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  
  num1 = prompt("First Number").to_f
  num2 = prompt("Second Number").to_f

  case operation
  when 'a' 
    operator = :+
  when 's'
    operator = :-
  when 'm'
    operator = :*
  when 'd'
    if num2 == 0 then 
      error("can't divide by zero")
      num2=prompt("Re-enter second number").to_f
    end
    operator = :/
  end

  result = calculate(num1, num2, operator)

  print "Result: #{result}"

  # pause for a couple of seconds - but is this the best way of delaying sending the user back? What if they need more than two seconds to read the screen? (or less)
  wait = gets.chomp
end

def advanced_calc
  puts "Good choice - which simple operation do you want to perform"
  print "(s)quare root or (p)ower: "
  operation = gets.chomp.downcase
  
  num1 = prompt("A Number").to_i
 
  case operation
  when 's' 
    result =  Math.sqrt(num1)
  when 'p'
    num2 = prompt("Another Number").to_i
    result = num1 ** num2
  end

  print "Result: #{result}"

  # pause for a couple of seconds - but is this the best way of delaying sending the user back? What if they need more than two seconds to read the screen? (or less)
  puts "press enter to start again"
  sleep = gets
end

def calculate(num1, num2, operator)
  return num1.send(operator, num2)
end

# run the app...

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  else
    error("please choose one of the options")
    sleep 2
  end

  response = menu
end