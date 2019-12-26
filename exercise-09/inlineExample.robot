*** Settings ***


*** Test Cases ***
Using Variable

  # Log a message, with a literal string. No Variable are used here.
  Log to Console   My name is Paul. My favorite color is teal. My favorite NFL team is the Jaguars.  console=true

  # Now we're declaring 3 Variable called name, color, and team. We also set them to values.
  ${name}=  Set Variable  Paul
  ${color}=  Set Variable  teal
  ${team}=  Set Variable  Jaguars

  # Log the same message, but this time we use the Variable we set up in the lines above.
  Log to Console   My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.  console=true

  # Now I'd like to log the same message, but for a different person named Lisa. She has different preferences than Paul
  ${name}=  Set Variable  Lisa
  ${color}=  Set Variable  Blue
  ${team}=  Set Variable  Bills

  # Log the same message, but this time we use the Variable we set up in the lines above.
  Log to Console   My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.  console=true

  # Now I'd like to log the same message, but for another person named Fred. He has different preferences than Paul and Lisa
  ${name}=  Set Variable  Fred
  ${color}=  Set Variable  Green
  ${team}=  Set Variable  Dolphins

  # Log the same message, but this time we use the Variable we set up in the lines above.
  Log to Console   My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.  console=true
