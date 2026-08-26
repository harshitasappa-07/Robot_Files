*** Settings ***
Library  Selenium2Library

Resource   Login_locator.robot

*** Keywords ***
Login To Application
    [Arguments]    ${username}    ${password}
    Input Text     ${USERNAME_INPUT}  ${username}
    Input Text     ${PASSWORD_INPUT}   ${password}
    Click Element  ${LOGIN_BUTTON} 

Verify Login successfully 
    Wait Until Page Contains    products 