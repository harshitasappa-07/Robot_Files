*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/login_locators.robot

*** Keywords ***

Login To Application
    [Arguments]    ${Username}    ${password}
    Wait Until Element Is Visible     xpath=//input[@placeholder='Username']  timeout=10s
    Input Text   xpath=//input[@placeholder='Username']   ${Username}
    Input Text    xpath=//input[@id='password']    ${password}
    Click Element    ${LOGIN_BUTTON}

Verify Login Successful
    Wait Until Page Contains    Products

Verify Login Error
    Wait Until Element Is Visible    ${LOGIN_ERROR}