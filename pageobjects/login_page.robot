*** Settings ***
Documentation   This file contains pageobjects of login page


*** Keywords ***
Enter Username And Password
    [Arguments]    ${username}=${STANDARD_USER}    ${password}=${PASSWORD}
    Input Text              user-name                ${username}
    Input Text              password                ${password}

Click On LogIn Button
    Click Button           xpath=//*[@id="login-button"]

Verify Error Message
    Wait Until Page Contains 	 Epic sadface: Sorry, this user has been locked out. 	 timeout=30s
