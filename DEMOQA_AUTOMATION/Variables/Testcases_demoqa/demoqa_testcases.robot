*** Settings ***
Library          SeleniumLibrary
Resource         ../variables/common_variables.robot
Resource         ../Keywords/demo_keywords.robot
Resource         ../demo_locators/text_box_locator.robot
Resource         ../demo_locators/check_box_locator.robot
Resource         ../demo_locators/radio_button_locators.robot
Resource         ../demo_locators/web_table_locators.robot
Resource         ../demo_locators/buttons_locators.robot
Resource         ../demo_locators/link_locators.robot
Resource         ../demo_locators/upload_download_locators.robot
Resource         ../demo_locators/dynamic_properties_locators.robot
Resource         ../demo_locators/practice_form_locators.robot
Resource         ../demo_locators/browser_window_locators.robot
Resource         ../demo_locators/Alerts_locator.robot
Resource         ../demo_locators/frames_locators.robot
Resource         ../demo_locators/modal_dialogs_locators.robot
Resource         ../demo_locators/accordian_locators.robot
Resource         ../demo_locators/slider_locators.robot
Resource         ../demo_locators/tabs_locators.robot
Resource         ../demo_locators/tool_tips_locators.robot
Resource        ../demo_locators/menu_locators.robot
Resource         ../demo_locators/select_menu_locators.robot
Resource         ../demo_locators/selectable_locators.robot
Resource         ../demo_locators/droppable_locators.robot

Test Setup       Open DemoQA Application
Test Teardown    Close DemoQA Application

*** Test Cases ***
Scenario 01: Verify Text Box Form Submission
    [Documentation]    Fill in all fields on the Text Box page and submit using native click.
    Go To    ${BASE_URL}/text-box
    Wait Until Element Is Visible       ${TEXT_BOX_INPUT_FULL_NAME}
    Input Text                          ${TEXT_BOX_INPUT_FULL_NAME}              John Doe
    Input Text                          ${TEXT_BOX_INPUT_EMAIL}                  john.doe@example.com
    Input Text                          ${TEXT_BOX_TEXT_AREA_CURRENT_ADDRESS}    123 Main Street
    Input Text                          ${TEXT_BOX_TEXT_AREA_PERMANENT_ADDRESS}  456 Second Street
    Click Button                        ${TEXT_BOX_BUTTON_SUBMIT}
    Wait Until Element Is Visible       ${TEXT_BOX_OUTPUT_NAME}
    Element Should Contain              ${TEXT_BOX_OUTPUT_NAME}                  John Doe
    Element Should Contain              ${TEXT_BOX_OUTPUT_EMAIL}                 john.doe@example.com

Scenario 02: Verify Tree Expansion And Check Box Selection
    [Documentation]    Expand the Home node and select the Home checkbox using native clicks.
    Go To    ${BASE_URL}/checkbox
    Safe Native Click                   ${CHECK_BOX_BUTTON_TOGGLE_HOME}
    Safe Native Click                   ${CHECK_BOX_CHECKBOX_HOME}
    Wait Until Element Is Visible       ${CHECK_BOX_TEXT_RESULT}
    Element Should Contain              ${CHECK_BOX_TEXT_RESULT}                 home

Scenario 03: Verify Radio Button Selection
    [Documentation]    Select the Yes radio option and verify status message.
    Go To    ${BASE_URL}/radio-button
    Safe Native Click                   ${RADIO_BUTTON_LABEL_YES}
    Wait Until Element Is Visible       ${RADIO_BUTTON_TEXT_SUCCESS}
    Element Text Should Be              ${RADIO_BUTTON_TEXT_SUCCESS}             Yes

Scenario 04: Verify Web Table Record Creation
    [Documentation]    Add a new record via the modal and verify it is visible in the table.
    Go To    ${BASE_URL}/webtables
    Safe Native Click                   ${WEB_TABLE_BUTTON_ADD}
    Wait Until Element Is Visible       ${WEB_TABLE_INPUT_FIRST_NAME}
    Input Text                          ${WEB_TABLE_INPUT_FIRST_NAME}            Bruce
    Input Text                          ${WEB_TABLE_INPUT_LAST_NAME}             Wayne
    Input Text                          ${WEB_TABLE_INPUT_EMAIL}                 bruce@waynecorp.com
    Input Text                          ${WEB_TABLE_INPUT_AGE}                   35
    Input Text                          ${WEB_TABLE_INPUT_SALARY}                100000
    Input Text                          ${WEB_TABLE_INPUT_DEPARTMENT}            Management
    Safe Native Click                   ${WEB_TABLE_BUTTON_SUBMIT}
    Input Text                          ${WEB_TABLE_INPUT_SEARCH}                bruce@waynecorp.com
    Page Should Contain                 Bruce

Scenario 05: Verify Mouse Click Actions
    [Documentation]    Perform double-click, context-click (right-click), and native single click.
    Go To    ${BASE_URL}/buttons
    Wait Until Element Is Visible       ${BUTTONS_BUTTON_DOUBLE_CLICK}
    Double Click Element                ${BUTTONS_BUTTON_DOUBLE_CLICK}
    Element Should Contain              ${BUTTONS_MESSAGE_DOUBLE_CLICK}          You have done a double click
    Open Context Menu                   ${BUTTONS_BUTTON_RIGHT_CLICK}
    Element Should Contain              ${BUTTONS_MESSAGE_RIGHT_CLICK}           You have done a right click
    Safe Native Click                   ${BUTTONS_BUTTON_DYNAMIC_CLICK}
    Element Should Contain              ${BUTTONS_MESSAGE_DYNAMIC_CLICK}         You have done a dynamic click

Scenario 06: Verify Link Status Code Response
    [Documentation]    Click the Created API call link and verify 201 response text.
    Go To    ${BASE_URL}/links
    Safe Native Click                   ${LINKS_LINK_CREATED}
    Wait Until Element Is Visible       ${LINKS_TEXT_RESPONSE}
    Element Should Contain              ${LINKS_TEXT_RESPONSE}                   201

Scenario 07: Verify Dynamic Element Visibility
    [Documentation]    Wait for the delayed button to become visible.
    Go To    ${BASE_URL}/dynamic-properties
    Wait Until Element Is Visible       ${DYNAMIC_PROPERTIES_BUTTON_VISIBLE_AFTER}    timeout=6s
    Element Should Be Visible           ${DYNAMIC_PROPERTIES_BUTTON_VISIBLE_AFTER}

Scenario 08: Verify Practice Form Submission Modal
    [Documentation]    Complete required fields in the student registration form and submit natively.
    Go To    ${BASE_URL}/automation-practice-form
    Wait Until Element Is Visible       ${PRACTICE_FORM_INPUT_FIRST_NAME}
    Input Text                          ${PRACTICE_FORM_INPUT_FIRST_NAME}        Clark
    Input Text                          ${PRACTICE_FORM_INPUT_LAST_NAME}         Kent
    Input Text                          ${PRACTICE_FORM_INPUT_EMAIL}             clark@dailyplanet.com
    Safe Native Click                   ${PRACTICE_FORM_RADIO_MALE}
    Input Text                          ${PRACTICE_FORM_INPUT_MOBILE_NUMBER}     9876543210
    Safe Native Click                   ${PRACTICE_FORM_CHECKBOX_SPORTS}
    Click Button                        ${PRACTICE_FORM_BUTTON_SUBMIT}
    Wait Until Element Is Visible       ${PRACTICE_FORM_MODAL_TITLE}
    Element Should Contain              ${PRACTICE_FORM_MODAL_TITLE}             Thanks for submitting the form

Scenario 09: Verify Switching To New Tab
    [Documentation]    Open a new tab from the Browser Windows page and read the sample heading.
    Go To    ${BASE_URL}/browser-windows
    Safe Native Click                   ${BROWSER_WINDOWS_BUTTON_NEW_TAB}
    Switch Window                       NEW
    Wait Until Element Is Visible       ${BROWSER_WINDOWS_TEXT_SAMPLE_HEADING}
    Element Text Should Be              ${BROWSER_WINDOWS_TEXT_SAMPLE_HEADING}   This is a sample page
    Close Window
    Switch Window                       MAIN

Scenario 10: Verify Simple and Confirm Alerts
    [Documentation]    Accept a simple alert and dismiss a confirm alert.
    Go To    ${BASE_URL}/alerts
    Safe Native Click                   ${ALERTS_BUTTON_SIMPLE_ALERT}
    Alert Should Be Present             action=ACCEPT
    Safe Native Click                   ${ALERTS_BUTTON_CONFIRM_ALERT}
    Handle Alert                        action=DISMISS
    Wait Until Element Is Visible       ${ALERTS_TEXT_CONFIRM_RESULT}
    Element Should Contain              ${ALERTS_TEXT_CONFIRM_RESULT}            Cancel

Scenario 11: Verify Reading Content Inside IFrame
    [Documentation]    Switch into frame1, verify text, and unselect the frame.
    Go To    ${BASE_URL}/frames
    Wait Until Element Is Visible       ${FRAMES_IFRAME_1}
    Select Frame                        ${FRAMES_IFRAME_1}
    Element Text Should Be              ${FRAMES_TEXT_SAMPLE_HEADING}            This is a sample page
    Unselect Frame

Scenario 12: Verify Modal Dialog Window
    [Documentation]    Open small modal, read body text, and close it natively.
    Go To    ${BASE_URL}/modal-dialogs
    Safe Native Click                   ${MODAL_DIALOGS_BUTTON_SMALL_MODAL}
    Wait Until Element Is Visible       ${MODAL_DIALOGS_TEXT_BODY}
    Element Should Contain              ${MODAL_DIALOGS_TEXT_BODY}               This is a small modal
    Safe Native Click                   ${MODAL_DIALOGS_BUTTON_CLOSE_SMALL}

Scenario 13: Verify Accordian Collapse and Expansion
    [Documentation]    Click the second accordion heading and verify inner text expands.
    Go To    ${BASE_URL}/accordian
    Safe Native Click                   ${ACCORDIAN_HEADING_SECTION_2}
    Wait Until Element Is Visible       ${ACCORDIAN_CONTENT_SECTION_2}
    Element Should Be Visible           ${ACCORDIAN_CONTENT_SECTION_2}

Scenario 14: Verify Tab Switching
    [Documentation]    Click the Origin tab and verify the active tab panel updates.
    Go To    ${BASE_URL}/tabs
    Safe Native Click                    ${TABS_TAB_ORIGIN}
    Wait Until Element Is Visible       ${TABS_PANEL_ACTIVE}
    Element Should Contain              ${TABS_PANEL_ACTIVE}                     Origin
Scenario 15: Verify Tool Tip Hover
    [Documentation]    Hover over button and verify tooltip popup is visible.
    Go To    ${BASE_URL}/tool-tips
    Wait Until Element Is Visible        ${TOOL_TIPS_BUTTON_HOVER}
    Mouse Over                           ${TOOL_TIPS_BUTTON_HOVER}
    Wait Until Element Is Visible        ${TOOL_TIPS_POPUP_INNER}
    Element Should Be Visible             ${TOOL_TIPS_POPUP_INNER}

Scenario 16: Verify Multi-Level Menu Navigation
    [Documentation]    Hover over nested menus to reveal sub-items.
    Go To    ${BASE_URL}/menu
    Wait Until Element Is Visible       ${MENU_ITEM_MAIN_2}
    Mouse Over                          ${MENU_ITEM_MAIN_2}
    Wait Until Element Is Visible       ${MENU_ITEM_SUB_SUB_LIST}
    Mouse Over                          ${MENU_ITEM_SUB_SUB_LIST}
    Wait Until Element Is Visible       ${MENU_ITEM_SUB_SUB_ITEM_1}
    Element Should Be Visible           ${MENU_ITEM_SUB_SUB_ITEM_1}

Scenario 17: Verify Select Menu Dropdowns
    [Documentation]    Select an option from the old-style standard dropdown menu.
    Go To    ${BASE_URL}/select-menu
    Wait Until Element Is Visible       ${SELECT_MENU_SELECT_OLD_STYLE}
    Scroll Element Into View            ${SELECT_MENU_SELECT_OLD_STYLE}
    Select From List By Value           ${SELECT_MENU_SELECT_OLD_STYLE}    1
    List Selection Should Be            ${SELECT_MENU_SELECT_OLD_STYLE}    Blue

Scenario 18: Verify Selectable List Item
    [Documentation]    Click the first list item and verify active state.
    Go To    ${BASE_URL}/selectable
    Wait Until Element Is Visible       ${SELECTABLE_ITEM_FIRST}
    Safe Native Click                   ${SELECTABLE_ITEM_FIRST}
    Wait Until Element Is Visible       ${SELECTABLE_ITEM_ACTIVE}
    Element Should Be Visible           ${SELECTABLE_ITEM_ACTIVE}

Scenario 19: Verify Drag and Drop Interaction
    [Documentation]    Drag element into droppable target and verify status change.
    Go To    ${BASE_URL}/droppable
    Wait Until Element Is Visible       ${DROPPABLE_ELEMENT_DRAG}
    Drag And Drop                       ${DROPPABLE_ELEMENT_DRAG}    ${DROPPABLE_ELEMENT_DROP}
    Wait Until Element Is Visible       ${DROPPABLE_TEXT_STATUS}
    Element Should Contain              ${DROPPABLE_TEXT_STATUS}     Dropped!    timeout=5sec 