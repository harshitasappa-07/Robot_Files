*** Settings ***
Library     SeleniumLibrary
Resource    ../demo_locators/Alerts_locator.robot
Resource    ../Keywords/demo_keywords.robot

*** Keywords ***
Trigger And Accept Alert
    Safe Native Click                ${ALERTS_BUTTON_SIMPLE_ALERT}
    Alert Should Be Present          action=ACCEPT

Trigger And Dismiss Confirm Alert
    Safe Native Click                ${ALERTS_BUTTON_CONFIRM_ALERT}
    Handle Alert                     action=DISMISS
    Wait Until Element Is Visible    ${ALERTS_TEXT_CONFIRM_RESULT}
    Element Should Contain           ${ALERTS_TEXT_CONFIRM_RESULT}            Cancel