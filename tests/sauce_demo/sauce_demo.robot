*** Settings ***
Documentation       A test suite containing test cases for customer purchase and product sorting

Test Setup          Run Keywords
...                 Open Application Page  AND
...                 Verify Login Page Loaded

Test Teardown      End Web Test

Resource            resources/sauce_demo.resource
Resource            ../../common/common_resource.robot
Test Tags           sauce_demo

*** Test Cases ***
Verify That Customer Purchase the Products Sucessfully
    [Documentation]  This testacse is use to verify that customer purchase the products
    [Tags]    customer_purchase
    Enter Customer User Details And Login To App
    Select Items And Add To Cart
    Proceed Checkout To Purchase The Items

Verify That Products Are Ordered According to Sort
    [Documentation]  This testacse is use to check the Products Are In Order
    [Tags]    sort_order
    Enter Customer User Details And Login To App
    Verify Sort Products By Name In Order

Verify Error Message When User Locked Out From The Platform
    [Documentation]  This testacse is use to check error message when locked out user login
    [Tags]    locked_out_user
    Enter Locked User Details And Verify Error Message
