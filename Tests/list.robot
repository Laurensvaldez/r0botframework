*** Settings ***

*** Variables ***
@{MY_VARIABLE} =    Hello there    This is value 2    Im am item 3

*** Test Cases ***
Variable Demonstration
    Log    ${MY_VARIABLE}[0]
    Log    ${MY_VARIABLE}[1]
    Log    ${MY_VARIABLE}[2]