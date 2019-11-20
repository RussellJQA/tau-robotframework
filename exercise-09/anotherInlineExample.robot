*** Settings ***


*** Test Cases ***
Using Variable

  # Now we're declaring 3 Variable called name, color, and team. We also set them to values.
  ${name}=  Set Variable  Paul
  ${color}=  Set Variable  teal
  ${team}=  Set Variable  Jaguars

  # Log the same message, but this time we use the Variable we set up in the lines above.
  Log   \nMy name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.  console=true

  # Log this in a profile-style
  Log  Profile:  console=true
  Log  Name: \t\t\t${name}  console=true
  Log  Favorite color: \t${color}  console=true
  Log  Favorite nfl team: \t${team}\n  console=true

  Log  ${name}'s favorite color is ${color}. For some reason he roots for the ${team}.  console=true
