#include <bits/stdc++.h> // all c libraries
#include <iostream> // cin, cout

using namespace std; // namespace for library functions

//global integers to use as arguments
int x = 5;
int y = 10;
int z = 7;
//global strings to use as arguments
string a = "Paul";
string b = "Bryan";
string c = "Kazuya";
//global strings for holding command line input
string minput;
string sinput;
string cinput;
string linput;
string iinput;

/*
this function employs if..else blocks to step through basic arithmetic
if 1 is selected, numbers are added and checked against one another
if 2 is selected, numbers are subtracted and printed out
Expected input: three integers
Expected output: messages to the command line
*/
void selectors(int _x, int _y, int _z) { // accept 3 integers
  cout << "Select operation:\n1) Addition\n2) Subtraction" << endl; // display options to user
  cin >> sinput; // store user input
  if (sinput == "1") { // addition is selected
    cout << "x is: " << _x << endl; // print the value of x
    _x = _x + _x; // double x by adding it to itself
    cout << "operation 1 complete!\nx is now: " << _x << endl; // notify user that addition is done
    if (_x == _y) { // if x + x = y
      cout << "x is equal to y!" << endl; // notify user that x + x = y
      _y = _y + _z; // increase y by z
      cout << "operation 2 complete!\ny is now: " << _y << endl; // notify user that addition is done
      if (_x == _y) { // if x + x = y + z
        cout << "x is still equal to y!" << endl; // notify the user that x + x = y + z
      }
      else { // if x + x != y + z
        cout << "x is no longer equal to y!" << endl; // notify the user that x + x != y + z
      }
    }
    else { // if x + x != y
      return; // end function, this shouldn't be possible
    }
  }
  else if (sinput == "2") { // subtraction is selected
    int _w = _x; // let new integer be the same value as x
    cout << "x is: " << _x << endl; // print the value of x
    _x = _y - _x; // subtract x from y, make that value x
    cout << "operation complete!\nx is now: " << _x << endl; // notify the user that subtraction is done
    if (_x == _w) { // if y - x = w, meaning y = 2x
      cout << "x is still "<< _x << "!" << endl; // notify the user that x did not change
    }
    else { // if y != 2x
      cout << "x is no longer " << _w << "!" << endl; // notify the user that x has been changed
    }
  }
  else { // no option is selected
    return; // end function
  }
}

/*
this function uses switch statements to select multiple potential strings and print out a full name
if 1 is selected, the first letter of a is checked
if 2 is selected, the first letter of b is checked
if 3 is selected, the first letter of c is checked
if nothing is selected, a default name is supplied
Expected input: three strings
Expected output: a first and last name to the command line
*/
void cases(string _a, string _b, string _c) { // accept 3 strings
  char _z; // let there be a null, local character
  cout << "Select letter:\n1) a\n2) b\n3) c"  << endl; // display options to user
  cin >> cinput; // store user input
  if (cinput == "1") { // if a is selected
    _z = _a[0]; // the first letter of a is the local character
  }
  else if (cinput == "2") { // if b is selected
    _z = _b[0]; // the first letter of b is the local character
  }
  else if (cinput == "3") { // if c is selected
    _z = _c[0]; // the first letter of c is the local character
  }
  switch (_z) { // check cases for character z
    case 'P': // z = P, therefore a is Paul
      cout << _a << " Phoenix" << endl; // print Paul Phoenix
      break; // stop checking
    case 'B': // z = B, therefore b is Bryan
      cout << _b << " Fury" << endl; // print Bryan Fury
      break; // stop checking
    case 'K': // z = K, therefore c is Kazuya
      cout << _c << " Mishima" << endl; // print Kazuya Mishima
      break; // stop checking
    default: // z = NULL
      cout << "Default Name" << endl; // print Default Name
  }
}

/*
this function employs a while and for loop to print an identical statement many times
if 1 is selected, 3 passes are made
if 2 is selected, 7 passes are made
if 3 is selected, 19 passes are made
if nothing is selected, 4 passes are made
Expected input: two integers
Expected output: messages on the command line
*/
void loops(int _x, int _z) { // accept two integers
  int _w; // let there be a local integer to determine the number of passes for our while loop
  cout << "Select number of passes:\n1) Few\n2) Many\n3) Too Many"  << endl; // display options to user
  cin >> linput; // store user input
  if (linput == "1") { // if few passes was selected
    _w = 9; // make 3 passes
  }
  else if (linput == "2") { // if many passes was selected
    _w = 13; // make 7 passes
  }
  else if (linput == "3") { // if too many passes was selected
    _w = 25; // make 19 passes
  }
  else { // if nothing was selected
    _w = 11; // make 4 passes
  }
  while (_z <= _w) { // (w - z) + 1 passes will be made
    cout << "Pass " << _z - 6 << ":" << endl; // display the current pass
    for (int i = 0; i < _z - _x; i++) { //  z - 5 passes will be made in this for loop
      cout << "  Pass " << _z - 6 << " is so exciting!" << endl; // notify the user that the current pass of the while loop is exciting
    }
    _z++; // add 1 to z
    if (_z == _w + 1) { // when the selected amount of passes have been made
      cout << "All passes complete!" << endl; // notify the user that the while loop is going to end
    }
    else { // if more passes are going to be made
      cout << "Moving to next pass:" << endl << endl; // notify the user that the while loop will continue
    }
  }
}

/*
this function uses an iterator to traverse a string and print out a full name
if 1 is selected, a is traversed
if 2 is selected, b is traversed
if 3 is selected, c is traversed
if nothing is selected, a default name is traversed
Expected input: three strings
Expected output: full names to the command line
*/
void iterators(string _a, string _b, string _c) { // accept three strings
  string _z; // let a local string represent the string to be traversed
  cout << "Select letter:\n1) a\n2) b\n3) c"  << endl; // display options to user
  cin >> iinput; // store user input
  if (iinput == "1") { // if a is selected
    _z = _a; // a will be traversed
  }
  else if (iinput == "2") { // if b is selected
    _z = _b; // b will be traversed
  }
  else if (iinput == "3") { // if c is selected
    _z = _c; // c will be traversed
  }
  else { // if nothing is selected
    _z = "Default Name"; // default name will be traversed
  }
  for (string::iterator it_z = _z.begin(); it_z < _z.end(); it_z++) { // loop for as many letters as there are in the given string
    cout << *it_z; // print the current letter by accessing the character in the string pointed to by iterator it_z
    if (it_z == (_z.end() - 1)) { // if on the second to last pass
      if (iinput == "1") { // if a was selected
        cout << " Phoenix" << endl; // name is Paul Phoenix
      }
      else if (iinput == "2") { // if b was selected
        cout << " Fury" << endl; // name is Bryan Fury
      }
      else if (iinput == "3") { // if c was selected
        cout << " Mishima" << endl; // name is Kazuya Mishima
      }
    }
  }
}

int main() { // driver function
  cout << "Select example to run:\n1) Selectors\n2) Cases\n3) Loops\n4) Iterators\nPlease enter the number associated with your selected option:" << endl; // display example options to user
  cin >> minput; // store user input
  if (minput == "1") { // if selectors is selected
    selectors(x, y, z); // display example using if..else blocks
  }
  else if (minput == "2") { // if selectors is selected
    cases(a, b, c); // display example using a switch block
  }
  else if (minput == "3") { // if selectors is selected
    loops(x, z); // display example using loops
  }
  else { // if iterators is selected
    iterators(a, b, c); // display example using iterators
  }
  return 0; // end driver
}