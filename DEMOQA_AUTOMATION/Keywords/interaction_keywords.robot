*** Settings ***
Library     SeleniumLibrary
Resource    ../demo_locators/selectable_locators.robot
Resource    ../keywords/demo_keywords.robot

*** Keywords ***
Select First Item From List
    Safe Native Click                ${SELECTABLE_ITEM_FIRST}
    Wait Until Element Is Visible    ${SELECTABLE_ITEM_ACTIVE}
    Element Should Be Visible        ${SELECTABLE_ITEM_ACTIVE}