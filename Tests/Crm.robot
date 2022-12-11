*** Settings ***
Documentation       This is some basic info about the whole suite

Library             SeleniumLibrary
#Run the script
#robot -d results tests/crm.robot

#robot tidy scripts
# robotidy tests
# robotidy test.robot
# robotidy tests/resources test.robot


*** Test Cases ***
Should be able to add new customer
    [Documentation]        This is some basic info
    [Tags]                 1006    smoke    contacts
    #Initialize Selenium
    Set Selenium Speed     .2s
    Set Selenium Timeout   10s

    #open the browser
    log                                    Starting the test case!
    Open Browser                   https://automationplayground.com/crm/    chrome

    #resize browser window for recording
    Set Window Position         x=341    y=169
    Set Window Size               width=1935    height=1090

    Page Should Contain         Customers Are Priority One!

    Click Link                           name=sign-in-link
    #you can use -login.html or id="id-name" or any text that can be recognized

    Page Should Contain        Login

    Input Text                         id=email-id    admin@robotframeworktutorial.com
    Input Text                         id=password    qwe
    Click Button                     id=submit-id
    Page Should Contain       Our Happy Customers
    #help pls come on

    Click Link                     id=new-customer
    Page Should Contain    Add Customer

    Input Text                     id=EmailAddress    janedoe@gmail.com
    Input Text                     id=FirstName    Jane
    Input Text                     id=LastName    Doe
    Input Text                     id=City    Dallas

    Sleep                  3s
    Close Browser
