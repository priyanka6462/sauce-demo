*** Settings ***
Documentation   This common file contains common keywords related to open browser and close browser
...
...             Test Setup and Test Teardown related keywords are available in keyword section

Resource        common_variable.robot
Library         SeleniumLibrary


*** Keywords ***
Open Application Page
    Open Browser    ${APP_URL}      ${BROWSER}
    Maximize Browser Window

Verify Login Page Loaded
    Page Should Contain     Swag Labs

End Web Test
    Close Browser