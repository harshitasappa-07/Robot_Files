*** Settings ***
Library     SeleniumLibrary
Resource    ../variables/common_variables.robot

*** Keywords ***
Open DemoQA Application
    Open Browser                 ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout         ${TIMEOUT}

Close DemoQA Application
    Close Browser

Safe Native Click
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}
    Scroll Element Into View            ${locator}
    Wait Until Element Is Visible       ${locator}
    Click Element                       ${locator}

Return To Home Page
    Go To                               ${BASE_URL}
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'home-banner')]