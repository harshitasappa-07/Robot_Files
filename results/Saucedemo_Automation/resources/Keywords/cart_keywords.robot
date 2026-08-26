*** Settings ***
Library    SeleniumLibrary
Resource   ../Locators/cart_locators.robot

*** Keywords ***

Verify Cart Page
    Wait Until Element Is Visible    ${CART_TITLE}

Verify Product In Cart
    [Arguments]    ${product_name}
    ${product}=    Set Variable
    ...    xpath=//div[contains(@class,'cart_item')]//div[normalize-space()='${product_name}']
    Wait Until Element Is Visible    ${product}
    Element Should Be Visible        ${product}

Remove Product
    [Arguments]    ${product_name}
    ${remove}=    Set Variable
    ...    xpath=//div[contains(@class,'cart_item')][.//div[normalize-space()='${product_name}']]//button[contains(@id,'remove')]
    Wait Until Element Is Visible      ${remove}
    Click Element    ${remove}

Continue Shopping
    Click Element      ${CONTINUE_SHOPPING}

Checkout
    Click Element    ${CHECKOUT_BUTTON}