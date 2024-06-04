*** Settings ***
Resource                ../../../pageobjects/login_page.robot
Resource                ../../../pageobjects/product_page.robot
Resource                ../../../pageobjects/checkout_page.robot
Resource                ../../../pageobjects/cart_page.robot


*** Keywords ***
Enter Customer User Details And Login To App
    Enter Username And Password
    Click On LogIn Button

Select Items And Add To Cart
    Verify Product Page Should be Loaded
    Add Item To Cart    add-to-cart-sauce-labs-backpack
    Add Item To Cart    add-to-cart-sauce-labs-bolt-t-shirt
    Add Item To Cart    add-to-cart-sauce-labs-fleece-jacket
    Click On Cart Icon
    Verify Item Added To Cart

Verify Item Added To Cart
    Verify Cart Page Loaded
    Verify Items TO Be Added In Cart    Sauce Labs Backpack
    Verify Items TO Be Added In Cart    Sauce Labs Bolt T-Shirt
    Verify Items TO Be Added In Cart    Sauce Labs Fleece Jacket
    Click On Checkout Button

Proceed Checkout To Purchase The Items
    Verify Checkout Page Loaded
    Enter Checkout Information
    Click On Continue Button
    Click On Finish Buttton
    Verify Order Has Been Placed

Enter Locked User Details And Verify Error Message
    Enter Username And Password    ${LOCKED_USER}
    Click On LogIn Button
    Verify Error Message

Verify Sort Products By Name In Order
    Verify Product Page Should be Loaded
    Sort Products By Name In Order(Descending)
