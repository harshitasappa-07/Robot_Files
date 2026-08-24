*** Settings ***

Library    Selenium2Library
Resource   Variables.robot


*** Keywords ***
# Open Application

Open OrangeHRM
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
# Login


Login To OrangeHRM
    Wait Until Element Is Visible    ${USERNAME_FIELD}    10s
    Input Text    ${USERNAME_FIELD}    ${USERNAME}

    Wait Until Element Is Visible    ${PASSWORD_FIELD}    10s
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}

    Click Button    ${LOGIN_BUTTON}
# Go To Admin
Go To Admin
    Wait Until Element Is Visible    ${ADMIN_MENU}    10s
    Click Element    ${ADMIN_MENU}
# Click Add User
Click Add User
    Wait Until Element Is Visible    ${ADD_BUTTON}    10s
    Click Button    ${ADD_BUTTON}
# Select User Role
Select User Role
    Wait Until Element Is Enabled    ${USER_ROLE}    10s
    Click Element    ${USER_ROLE}

    Wait Until Element Is Visible    ${ESS_OPTION}    10s
    Click Element    ${ESS_OPTION}

# Select Employee
Select Employee
    Wait Until Element Is Visible    ${EMPLOYEE_NAME}    10s
    Click Element    ${EMPLOYEE_NAME}
    Input Text    ${EMPLOYEE_NAME}    ${EMPLOYEE}

    Sleep    2s

    Wait Until Element Is Visible    ${EMPLOYEE_OPTION}    10s
    Click Element    ${EMPLOYEE_OPTION}
# Select Status
Select Status
    Click Element    ${STATUS}

    Wait Until Element Is Visible    ${ENABLED_OPTION}    10s
    Click Element    ${ENABLED_OPTION}
# Enter Username
Enter New Username
    Input Text    ${NEW_USERNAME_FIELD}    ${NEW_USERNAME}
# Enter Password
Enter New Password
    Input Text    ${NEW_PASSWORD_FIELD}    ${NEW_PASSWORD}

# Enter Confirm Password
Enter Confirm Password
    Input Text    ${CONFIRM_PASSWORD_FIELD}    ${NEW_PASSWORD}
# Save User
Save User
    Click Button    ${SAVE_BUTTON}
# Close Browser
    Close All Browsers