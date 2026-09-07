*** Settings ***
Library    SeleniumLibrary
Resource   ../Locators/product_locator.robot

*** Keywords ***

Verify Products Page
    Wait Until Element Is Visible    ${PRODUCTS_TITLE}

Add Product To Cart
    [Arguments]    ${product_name}
    ${button}=    Set Variable
    ...    xpath=//div[normalize-space()='${product_name}']/ancestor::div[contains(@class,'inventory_item')]//button[contains(@id,'add-to-cart') or normalize-space()='Add to cart']
    Wait Until Element Is Visible  ${button}   10s 
    Click Element    ${button}

Open Cart
    Click Element    ${CART_ICON}

Logout
    Click Element    ${MENU_BUTTON}
    Wait Until Element Is Visible    ${LOGOUT_LINK}
    Click Element    ${LOGOUT_LINK}