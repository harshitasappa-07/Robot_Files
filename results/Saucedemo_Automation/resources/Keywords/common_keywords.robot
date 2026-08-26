*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common_variables.robot

*** Keywords ***

Open Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout   10sec

Close Application
    Close All Browsers