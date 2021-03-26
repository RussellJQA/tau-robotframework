*** Settings ***
# Options 1: Set the path to an included Python file in the import statement
Library  ./calculator.py 

# OR...

# Option 2: Set the pythonpath at the command line (in the Terminal):
#   'robot --pythonpath <path> example.robot',
# as in:
#   robot --pythonpath C:\dev\tau-robotframework importing-local-library.robot  
# Then you don't need to specify the "./" before the .py filename, but can just use:
# Library  calculator.py 


*** Test Cases ***
Addition Should Work
  ${result}=  add   1   4
  Should Be Equal As Numbers  ${result}   5

Subtraction Should Work
  ${result}=  subtract   4  1
  Should Be Equal As Numbers  ${result}  3

Multiplication Should Work
  ${result}=  multiply   4  1
  Should Be Equal As Numbers  ${result}   4

Division Should Work
  ${result}=  divide   4  1
  Should Be Equal As Numbers  ${result}   4
