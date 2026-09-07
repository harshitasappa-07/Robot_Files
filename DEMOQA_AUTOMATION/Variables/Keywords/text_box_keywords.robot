*** Settings ***
Library    SeleniumLibrary
Resource   ../Keywords/demo_keywords.robot
Resource   ../demo_locators/text_box_locator.robot

*** Keywords ***
Fill And Submit Text Box Form
    [Arguments]    ${full_name}    ${email}    ${curr_addr}    ${perm_addr}
    Wait Until Element Is Visible    ${TEXT_BOX_INPUT_FULL_NAME}
    Input Text                       ${TEXT_BOX_INPUT_FULL_NAME}              ${full_name}
    Input Text                       ${TEXT_BOX_INPUT_EMAIL}                  ${email}
    Input Text                       ${TEXT_BOX_TEXT_AREA_CURRENT_ADDRESS}    ${curr_addr}
    Input Text                       ${TEXT_BOX_TEXT_AREA_PERMANENT_ADDRESS}  ${perm_addr}
    Safe Native Click                ${TEXT_BOX_BUTTON_SUBMIT}

Verify Text Box Form Submitted
    [Arguments]    ${expected_name}
    Wait Until Element Is Visible    ${TEXT_BOX_OUTPUT_NAME}
    Element Should Contain           ${TEXT_BOX_OUTPUT_NAME}   ${expected_name}