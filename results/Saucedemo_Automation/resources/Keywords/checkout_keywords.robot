*** Settings ***
Library    SeleniumLibrary
Resource   ../Locators/checkout_locator.robot

*** Keywords ***

Enter Checkout Details
    [Arguments]    ${first_name}    ${last_name}    ${postal_code}
    Input Text    ${FIRST_NAME_INPUT}    ${first_name}
    Input Text    ${LAST_NAME_INPUT}     ${last_name}
    Input Text    ${POSTAL_CODE_INPUT}   ${postal_code}

Continue Checkout
    Click Element    ${CONTINUE_BUTTON}

Finish Order
    Click Element    ${FINISH_BUTTON}

Verify Order Completed
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}