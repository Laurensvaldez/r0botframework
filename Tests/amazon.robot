*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/PO/Amazon.Web.Gui.robot
Resource    ../Resources/PO/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test
*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]                                   This is some basic info about the test
    [Tags]                                                     smoke
    amazon.web.gui.Search for Products
    amazon.web.gui.Select Product from Search Results
    amazon.web.gui.Add Product to Cart
    amazon.web.gui.Begin Checkout