def measurement_calc
  puts `clear`
  puts "Oooo! Getting complicated! Which conversion do you want to do?"
  puts "(m)iles to kilometers, (f)eet to meters, (i)nches to centimeters, or"
  print "(k)ilometers to miles, m(e)ters to feet, (c)entimeters to inches: "
  conversion = get_string

  print "What number to convert: "
  a = get_float

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

  puts "That's #{result} in new money."
end