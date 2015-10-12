def volume_calc
  puts `clear`
  puts "Really? Just let me get my slide-rule... okay, what shape do you have?"
  print "(c)ube, (s)phere: "

  shape = get_string

  case shape
  when 'c'
    print "What's the length of its sides? "
    number = get_float
    result = number ** 3
  when 's'
    print "What's its radius? "
    number = get_float
    result = (4.0 / 3.0) * Math::PI * (number ** 3)
  end

  puts "Okay, Archimedes, that's #{result}."
end