*** Settings ***
Library    SeleniumLibrary
Resource   ../demo_locators/check_box_locator.robot

*** Keywords ***
Open Check Box
    Click Element       ${CHECK_BOX_BUTTON_TOGGLE_HOME}   

Select Home Check Box
    Click Element        ${CHECK_BOX_CHECKBOX_HOME}

Verify Home Selected
    Page Should Contain    You have selected : 
    Page Should Contain    home