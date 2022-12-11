*** Settings ***
Library    Selenium2Library

*** Keywords ***
Search for Products
    Go To                                                     http://amazon.nl
    Wait Until Page Contains                       Amazon.nl
    Input Text                                               id=twotabsearchtextbox                        Ferrari 458
    Click Button                                           xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains                       results for "Ferrari 458"
    
Select Product from Search Results
    Click Link                                                css=#result_0 a.s-access-detail-page    
    Wait Until Page Contains                       Back to search results
    
Add Product to Cart
    Click Button                                            id=add-to-cart-button
    Wait Until Page Contains                       1 item added to Cart
    
Begin Checkout
    Click Link                                                Proceed to checkout
    Page Should Contain Element               ap_signin1a_pagelet_title        
    Element Text Should Be                         ap_signin1a_pagelet_title     Sign In
    
