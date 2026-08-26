*** Settings ***
Library    SeleniumLibrary

Resource      common_variables.robot

*** Keywords ***

Open Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close Application
    Close All Browsers