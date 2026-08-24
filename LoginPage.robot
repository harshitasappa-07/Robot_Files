*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}              https://opensource-demo.orangehrmlive.com/
${USERNAME}         xpath=//input[@name="username"]
${PASSWORD}         xpath=//input[@name="password"]
${LOGIN_BUTTON}     xpath=//button[@type="submit"]

*** Keywords ***
Open OrangeHRM
    Open Browser    ${URL}    Chrome

Login
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME}    ${username}
    Input Text    ${PASSWORD}    ${password}
    Click Element    ${LOGIN_BUTTON}