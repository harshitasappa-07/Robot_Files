*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}       chrome
${url}           https://google.com

*** Keywords ***
Go to Google
    Open Browser  ${url}  ${browser}

*** Test Cases ***
Open google
    Go to Google
   