*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/login_locators.robot

*** Keywords ***

Login To Application
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_INPUT}    ${username}
    Input Text    ${PASSWORD_INPUT}    ${password}
    Click Element    ${LOGIN_BUTTON}

Verify Login Successful
    Wait Until Page Contains    Products

Verify Login Error
    Wait Until Element Is Visible    ${LOGIN_ERROR}