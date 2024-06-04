*** Settings ***
Documentation   This file contains pageobjects of checkout page

*** Keywords ***
Verify Checkout Page Loaded
    Wait Until Page Contains 	 Checkout: Your Information 	 timeout=30s


Enter Checkout Information
    Input Text 	 xpath=//*[@id="first-name"] 	 test_user
    Input Text   xpath=//*[@id="last-name"]    test_last_name
    Input Text   xpath=//*[@id="postal-code"]   00810

Click On Continue Button
    Click Element           xpath=//*[@id="continue"]

Click On Finish Buttton
    Click Element    xpath=//*[@id="finish"]

Verify Order Has Been Placed
    Wait Until Page contains Element    xpath=//*[@id="checkout_complete_container"]/h2