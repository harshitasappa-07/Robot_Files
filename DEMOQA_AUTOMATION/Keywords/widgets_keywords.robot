*** Settings ***
Library     SeleniumLibrary
Resource    ../demo_locators/accordian_locators.robot
Resource    ../Keywords/demo_keywords.robot

*** Keywords ***
Expand Accordian Section
    Safe Native Click                ${ACCORDIAN_HEADING_SECTION_2}
    Wait Until Element Is Visible    ${ACCORDIAN_CONTENT_SECTION_2}
    Element Should Be Visible        ${ACCORDIAN_CONTENT_SECTION_2}