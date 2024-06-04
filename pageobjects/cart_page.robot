*** Settings ***
Documentation   This file contains pageobjects of cart page

*** Keywords ***
Verify Cart Page Loaded
    Wait Until Page Contains 	 Your Cart 	 timeout=30s


Verify Items TO Be Added In Cart
    [Arguments]    ${item_name}
    Wait Until Element Is Visible 	 xpath=//*[contains(text(),'${item_name}')] 	 timeout=30s

Click On Checkout Button
    Click Element           xpath=//*[@id="checkout"]