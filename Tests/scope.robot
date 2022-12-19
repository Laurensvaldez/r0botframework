*** Settings ***
Resource    ../Resources/PO/scope.robot

*** Test Cases ***
Create and log a variable
    Log    ${MY_VARIABLE}
    
Access a variable
    Log    ${MY_VARIABLE}

***Keywords***