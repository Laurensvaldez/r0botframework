*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/PO/Amazon.Web.Gui.robot
Resource    ../Resources/PO/Common.robot
Test Setup    common.Begin Web Test
Test Teardown    common.End Web Test

*** Variables ***



*** Test Cases ***
Logged out user can search for Products
    [Tags]    Current
    Amazon.Web.Gui.Search for Products
    
    
    
Logged out user can view a product    
    Amazon.Web.Gui.Search for Products
    Amazon.Web.Gui.Select Product from Search Results
    

Logged out user can add product to cart
    Amazon.Web.Gui.Search for Products
    Amazon.Web.Gui.Add Product to Cart
    
#User must sign in to check out
#     [Documentation]                                   This is some basic info about the test
#     [Tags]                                                     smoke
#     amazon.web.gui.Search for Products
#     amazon.web.gui.Select Product from Search Results
#     amazon.web.gui.Add Product to Cart
#     amazon.web.gui.Begin Checkout