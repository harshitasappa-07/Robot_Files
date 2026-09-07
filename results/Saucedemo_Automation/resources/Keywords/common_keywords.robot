*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common_variables.robot

*** Keywords ***
Open Application
    Set Selenium Timeout    10 seconds
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Close Application
    Close All Browsers