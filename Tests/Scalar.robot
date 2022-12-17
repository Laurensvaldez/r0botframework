*** Settings ***

*** Variables ***
${MY_VARIABLE}=     This is my input data

*** Test Cases ***
Set a variable in the test Cases
    [Tags]    Current
    ${my_new_variable} =     Set Variable    My new variable
    Log     ${my_new_variable}
    
Variable Demonstration
    Log    ${MY_VARIABLE}
    
Variable Demonstration 2
    Log    ${MY_VARIABLE}
    
*** Keywords ***
