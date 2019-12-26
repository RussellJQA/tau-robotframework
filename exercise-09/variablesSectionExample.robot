*** Settings ***


*** Test Cases ***
Using Variable  
  # Log a message, with a literal string. No Variable are used here.
  Log to Console   My name is Paul. My favorite color is teal. My favorite NFL team is the Jaguars.

  # Log the same message, but this time we use the variables we set up in the variables section.
  Log to Console   My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.

*** Variables ***
${name}  Paul
${color}  teal
${team}   Jaguars