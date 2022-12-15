x, y, z = 5, 10, 7 --global integers for arguments
a, b, c = "Paul", "Bryan", "Kazuya" --global strings for arguments

--[[ 
this function employs if..else blocks to step through basic arithmetic
if 1 is selected, numbers are added and checked against one another
if 2 is selected, numbers are subtracted and printed out
Expected input: three integers
Expected output: messages to the command line
--]]
function selectors(_x, _y, _z) --accept three integers
  print("Select operation:\n1) Addition\n2) Subtraction") --print options to the user
  local sinput = io.read() --store user input locally
  if (sinput == "1") --if addition is selected
    then io.write("x is: ", _x, "\n") --print the value of x
    _x = _x + _x --double x by adding it to itself
    io.write("operation 1 complete!\nx is now: ", _x, "\n") --notify the user that addition is done
    if (_x == _y) --if x + x = y
     then print("x is equal to y!") -- notify the user that x + x = y
      _y = _y + _z --increase y by z
      io.write("operation 2 complete!\ny is now: ", _y, "\n") --notify the user that addition is done
      if (_x == _y) --if x + x = y + z
        then print("x is still equal to y!") --notify the user that x + x = y + z
      else --if x + x != y + z
        print("x is no longer equal to y!") --notify the user that x + x != y + z
      end
    else --if x + x != y
      return --end function, this shouldn't be possible
    end
  elseif (sinput == "2") --if subtraction is selected
    then local _w = _x --let a local integer be the same as x
    io.write("x is: ", _x, "\n") --print the value of x
    _x = _y - _x --subtract x from y, make that value x
    print("operation complete!\nx is now: ", _x) --notify the user that subtraction is done
    if (_x == _w) --if y - x = w, meaning y = 2x
      then io.write("x is still ", _x, "!\n") --notify the user that x did not change
    else --if y != 2x
      io.write("x is no longer ", _w, "!\n") --notify the user that x has been changed
    end
  else --no option is selected
    return --end function
  end
end

--[[ 
this function uses a table of anonymous functions to simulate a C-style switch statement
if 1 is selected, string a is checked
if 2 is selected, string b is checked
if 3 is selected, string c is checked
if nothing is selected, a default name is supplied
after a string is selected, a function from the table corresponding to user input determines which last name is supplied
Expected input: three strings
Expected output: a first and last name to the command line
--]]
function cases(_a, _b, _c) --accept three strings
  local _z --let a local string hold the string to be "switched"
  local switch = { --let a table hold functions corresponding to cases for z
    ["1"] = function() --if z = a
      return _z .. " Phoenix" --return Paul Phoenix
    end,
    ["2"] = function() --if z = b
      return _z .. " Fury" --return Bryan Fury
    end,
    ["3"] = function() --if z = c
      return _z .. " Mishima" --return Kazuya Mishima
    end
  }
  print("Select letter:\n1) a\n2) b\n3) c") --display options to user
  local cinput = io.read() --store user input locally
  if (cinput == "1") --if a was selected
    then _z = _a --z = a
  elseif (cinput == "2") --if b was selected
    then _z = _b --z = b
  elseif (cinput == "3") --if c was selected
    then _z = _c --z = c
  end
  local coutput = switch[cinput] --let a local string hold the return value of the corresponding function from the table switch to the user's input
  if (coutput) --if the table has a corresponding function
    then io.write(coutput()) --print out the string holding that function's output
  else --if the table has no corresponding function, meaning the user chose an invalid option
    print("Default Name") --print out a default name
  end
end

--[[ 
this function employs a while..do and for..do loop to print an identical statement many times
if 1 is selected, 3 passes are made
if 2 is selected, 7 passes are made
if 3 is selected, 19 passes are made
if nothing is selected, 4 passes are made
Expected input: two integers
Expected output: messages on the command line
--]]
function loops(_x, _z) --accept two integers
  local _w --let a local integer determine the number of passes for the while loop
  print("Select number of passes:\n1) Few\n2) Many\n3) Too Many") --display options to the user
  local linput = io.read() --store user input locally
  if (linput == "1") --if few was selected
    then _w = 9 --make 3 passes
  elseif (linput == "2") --if many was selected
    then _w = 13 --make 7 passes
  elseif (linput == "3") --if too many was selected
    then _w = 25 --make 19 passes
  else --if nothing was selected
    _w = 11 --make 4 passes
  end
  while (_z <= _w) --(w - z) + 1 passes will be made
  do --execute the following code for each pass
    io.write("Pass ", _z - 6, ":\n") --display the current pass
    for i = 0, _z - (_x + 1), 1 --z - 5 passes will be made in this for loop; the x + 1 is an offset because a do statement must execute at least once
    do --execute the following code for each pass
      io.write("  Pass ", _z - 6," is so exciting!\n") --notify the user that the current pass of the while loop is exciting
    end
    _z = _z + 1 --add 1 to the value of z
    if (_z == _w + 1) --when the selected passes have been made
      then print("All passes complete!") --notify the user that the while loop is going to end
    else --if more passes are going to be made
      print("Moving to next pass:") --notify the user that the while loop will continue
      print() --print a line of whitespace
    end
  end
end

--[[ 
this function uses an integrated iterator function to traverse a string and print out a full name
if 1 is selected, a is traversed
if 2 is selected, b is traversed
if 3 is selected, c is traversed
if nothing is selected, a default name is traversed
Expected input: three strings
Expected output: full names to the command line
--]]
function iterators(_a, _b, _c) --accept three strings
  local _z --let a local string hold the string to be traversed
  print("Select letter:\n1) a\n2) b\n3) c") --display options to user
  local iinput = io.read() --store user input locally
  if (iinput == "1") --if a was selected
    then _z = _a --z = a
  elseif (iinput == "2") --if b was selected
    then _z = _b --z = b
  elseif (iinput == "3") --if c was selected
    then _z = _c --z = c
  else --if nothing was selected
    _z = "Default Name" --z = default name
  end
  for letter in _z:gmatch"." --for as many letters are in the given string, unless a period is found
  do --execute the following code for each pass
   io.write(letter) --print the current letter
  end
  if (iinput == "1") --if a was selected
    then print(" Phoenix") --attach the last name Phoenix to the current line
  elseif (iinput == "2") --if b was selected
    then print(" Fury") --attach the last name Fury to the current line
  elseif (iinput == "3") --if c was selected
    then print(" Mishima") --attach the last name Mishima to the current line
  end
end

--Driver code
print("Select example to run:\n1) Selectors\n2) Cases\n3) Loops\n4) Iterators\nPlease enter the number associated with your selected option:") --display example options to the user
local minput = io.read() --store user input locally
if (minput == "1") --if selectors was selected
  then selectors(x, y, z) --display the example using if..else blocks
elseif (minput == "2") --if cases was selected
  then cases(a, b, c) --display the example with the table
elseif (minput == "3") --if loops was selected
  then loops(x, z) --display the example using loops
else --if iterators was selected
  iterators(a, b, c) --display the example using traversal functions
end --end driver 