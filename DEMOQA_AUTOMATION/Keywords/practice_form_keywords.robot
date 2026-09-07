*** Settings ***
Library     SeleniumLibrary
Resource    ../demo_locators/practice_form_locators.robot
Resource   ../Keywords/demo_keywords.robot

*** Keywords ***
Fill And Submit Practice Form
    [Arguments]    ${first_name}    ${last_name}    ${email}    ${phone}
    Wait Until Element Is Visible    ${PRACTICE_FORM_INPUT_FIRST_NAME}
    Input Text                       ${PRACTICE_FORM_INPUT_FIRST_NAME}        ${first_name}
    Input Text                       ${PRACTICE_FORM_INPUT_LAST_NAME}         ${last_name}
    Input Text                       ${PRACTICE_FORM_INPUT_EMAIL}             ${email}
    Safe Native Click                ${PRACTICE_FORM_RADIO_MALE}
    Input Text                       ${PRACTICE_FORM_INPUT_MOBILE_NUMBER}     ${phone}
    Safe Native Click                ${PRACTICE_FORM_CHECKBOX_SPORTS}
    Safe Native Click                ${PRACTICE_FORM_BUTTON_SUBMIT}

Verify Practice Form Modal And Close
    Wait Until Element Is Visible    ${PRACTICE_FORM_MODAL_TITLE}
    Element Should Contain           ${PRACTICE_FORM_MODAL_TITLE}             Thanks for submitting the form
    Safe Native Click                ${PRACTICE_FORM_BUTTON_CLOSE_MODAL}