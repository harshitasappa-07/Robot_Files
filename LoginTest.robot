*** Settings ***
Resource    LoginPage.robot

*** Test Cases ***
Verify OrangeHRM Login
    Open OrangeHRM
    Login    Admin    admin123