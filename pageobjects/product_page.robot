*** Settings ***
Documentation   This file contains pageobjects of product page

Library  Collections


*** Keywords ***
Verify Product Page Should be Loaded
    Wait Until Page Contains 	 Products 	 timeout=30s


Add Item To Cart
    [Arguments]    ${item_name}
    Wait Until Element Is Visible 	 xpath=//*[@id='${item_name}'] 	 timeout=30s
    Click Element    xpath=//*[@id='${item_name}']

Click On Cart Icon
    Click Element           xpath=//*[@id="shopping_cart_container"]/a

Sort Products By Name In Order(Descending)
    @{products_before_sort}    Get Webelements    css=.inventory_item_name
    @{product_names_before_sort}    Create List
    FOR    ${item}    IN    @{products_before_sort}
        ${name}=    Get Text    ${item}
        Append To List    ${product_names_before_sort}    ${name}
    END
    Select From List By Value   class=product_sort_container    za
    @{products_after_sort}    Get Webelements    css=.inventory_item_name
    @{product_names_after_sort}    Create List
    FOR    ${item}    IN    @{products_after_sort}
        ${name}=    Get Text    ${item}
        Append To List    ${product_names_after_sort}    ${name}
    END
    log  ${product_names_after_sort}
    ${sorted_product_names}=    Evaluate    sorted(${product_names_before_sort}, reverse=True)
    log  ${sorted_product_names}
    Lists Should Be Equal    ${product_names_after_sort}    ${sorted_product_names}
