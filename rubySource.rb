# global integers for arguments
$x = 5
$y = 10
$z = 7
# global strings for arguments
$a = "Paul"
$b = "Bryan"
$c = "Kazuya"

=begin
this function employs if..else blocks to step through basic arithmetic
if 1 is selected, numbers are added and checked against one another
if 2 is selected, numbers are subtracted and printed out
Expected input: three integers
Expected output: messages to the command line
=end
def selectors(_x = 5, _y = 10, _z = 7) # accept 3 integers
  puts "Select operation:\n1) Addition\n2) Subtraction" # print options to user
  sinput = gets.chomp # store one line of user input
  if sinput == "1" # if addition was selected
    puts "x is: #{_x}" # print the value of x
    _x = _x + _x # double x by adding it to itself
    puts "operation 1 complete!\nx is now: #{_x}" # notify the user that addition is done
    if (_x == _y) # if x + x = y
     puts "x is equal to y!" # notify the user that x + x = y
      _y = _y + _z # increase y by z
      puts "operation 2 complete!\ny is now: #{_y}" # notify the user that addition is done
      if (_x == _y) # if x + x = y + z
        puts "x is still equal to y!" # notify the user that x has not changed
      else # if x + x != y + z
        puts "x is no longer equal to y!" # notify the user that x has changed
      end
    else # if x + x != y
      return # end function, this shouldn't be possible
    end
  elsif sinput == "2" # if subtraction is selected
    _w = _x # let a local integer be the same as x
    puts "x is: #{_x}" # print the value of x
    _x = _y - _x # subtract x from y, make that value x
    puts "operation complete!\nx is now: #{_x}" # notify the user that subtraction is done
    if _x == _w # if y - x = w, meaning y = 2x
      puts "x is still #{_x}!" # notify the user that y - x = w
    else # if y != 2x
      puts "x is no longer #{_w}!" # notify the user that y - x != w
    end
  else # if no option is selected
    return # end function
  end
end

=begin
this function uses case statements to select multiple potential strings and print out a full name
if 1 is selected, the first letter of a is checked
if 2 is selected, the first letter of b is checked
if 3 is selected, the first letter of c is checked
if nothing is selected, a default name is supplied
Expected input: three strings
Expected output: a first and last name to the command line
=end
def cases(_a = "Paul", _b = "Bryan", _c = "Kazuya") # accept three strings
  _z = "" # let a local, null string hold the string to be checked
  puts "Select letter:\n1) a\n2) b\n3) c" # print options to user
  cinput = gets.chomp; # store one line of user input
  if cinput == "1" # if a is selected
    _z = _a # z = a
  elsif cinput == "2" # if b is selected
    _z = _b # z = b
  elsif cinput == "3" # if c is selected
    _z = _c # z = c
  end
  case _z # check potential cases for values of z
    when "Paul" # if z = a
      puts "#{_z} Phoenix" # print name Paul Phoenix
    when "Bryan" # if z = b
      puts "#{_z} Fury" # print name Bryan Fury
    when "Kazuya" # if z = c
      puts "#{_z} Mishima" # print name Kazuya Mishima
    else # if no option was selected
      puts "Default Name" # print default name
  end
end

=begin
this function employs an until..do statement and for loop to print an identical statement many times
if 1 is selected, 3 passes are made
if 2 is selected, 7 passes are made
if 3 is selected, 19 passes are made
if nothing is selected, 4 passes are made
Expected input: two integers
Expected output: messages on the command line
=end
def loops(_x = 5, _z = 7) # accept two integers
  _w = 0 # let a local integer determine the number of passes for the until..do statement
  puts "Select number of passes:\n1) Few\n2) Many\n3) Too Many" # print options to user
  linput = gets.chomp; # store one line of user input
  if linput == "1" # if few was selected
    _w = 9 # make 3 passes
  elsif linput == "2" # if many was selected
    _w = 13 # make 7 passes
  elsif linput == "3" # if too many was selected
    _w = 25 # make 19 passes
  else # if nothing was selected
    _w = 11 # make 4 passes
  end
  until _z > _w do # execute the following code until z is greater than w; (w - z) + 1 passes will be made
      print "Pass #{_z - 6}:\n" # display the current pass
      for i in 0..(_z - (_x + 1)) # --z - 5 passes will be made in this for loop; the x + 1 is an offset because a do statement must execute at least once
        print "  Pass #{_z - 6} is so exciting!\n" # notify the user that the current pass of the until..do loop is exciting
      end
    _z += 1 # add 1 to the value of z
    if _z == _w + 1 # if all passes have been made
      print("All passes complete!") # notify the user that the loop is going to end
    else # if there are more passes to be made
      print("Moving to next pass:\n") # notify the user that the loop will continue
      print("\n") # print a line of whitespace
    end
  end
end

=begin
this function uses a chain of integrated iterator functions to traverse a string and print out a full name
if 1 is selected, a is traversed
if 2 is selected, b is traversed
if 3 is selected, c is traversed
if nothing is selected, a default name is traversed
Expected input: three strings
Expected output: full names to the command line
=end
def iterators(_a = "Paul", _b = "Bryan", _c = "Kazuya") # accept three strings
  _z = "" # let a local string hold the string to be traversed
  puts "Select letter:\n1) a\n2) b\n3) c" # print options to user
  iinput = gets.chomp; # store one line of user input
  if iinput == "1" # if a is selected
    _z = _a # z = a
  elsif iinput == "2" # if b is selected
    _z = _b # z = b
  elsif iinput == "3" # if c is selected
    _z = _c # z = c
  else # if nothing is selected
    _z = "Default Name" # z = default name
  end
  _z.split('').each { |letter| # split the characters in the given string up, delimited by the lack of spaces; then, loop for each character, given by the variable letter
    print letter # print the current character
  }
  if iinput == "1" # if z = a
    print " Phoenix" # attach the last name Phoenix
  elsif iinput == "2" # if z = b
    print " Fury" # attach the last name Fury
  elsif iinput == "3" # if z = c
    print " Mishima" # attach the last name Mishima
  end
end

# Driver code
puts "Select example to run:\n1) Selectors\n2) Cases\n3) Loops\n4) Iterators\nPlease enter the number associated with your selected option:" # display example options to user
minput = gets.chomp # store one line of user input
if minput == "1" # if selectors was selected
  selectors # display the example using if..else blocks
elsif minput == "2" # if cases was selected
  cases # display the example using a case statement
elsif minput == "3" # if loops was selected
  loops # display the example using until..do and for loops
else  # if iterators was selected
  iterators # display the example using chained iterator functions
end # end driver