*** Variables ***
# Application Details

${URL}                  https://opensource-demo.orangehrmlive.com/
${BROWSER}              chrome

# Login

${USERNAME}             Admin
${PASSWORD}             admin123

# New User Data

${EMPLOYEE}             John 
${NEW_USERNAME}         Automationtest123
${NEW_PASSWORD}         Testuser@123

# Login Locator

${USERNAME_FIELD}       xpath=//input[@placeholder='Username']
${PASSWORD_FIELD}       xpath=//input[@name='password']
${LOGIN_BUTTON}         xpath=//button[@type='submit']


# Admin Page Locators

${ADMIN_MENU}           xpath=//span[normalize-space()='Admin']
${ADD_BUTTON}           xpath=//button[normalize-space()='Add']


# Add User Locators


${USER_ROLE}            xpath=//div[contains(@class,'oxd-select-text')]
${ESS_OPTION}           xpath=//span[normalize-space()='ESS']

${EMPLOYEE_NAME}        xpath=//input[@placeholder='Type for hints...']
${EMPLOYEE_OPTION}      xpath=//div[contains(@class,'oxd-autocomplete-option')]//span[normalize-space()='John David Smith']

${STATUS}               xpath=//label[normalize-space()='Status']/following::div[contains(@class,'oxd-select-text')][1]
${ENABLED_OPTION}       xpath=//div[contains(@class,'oxd-select-option')]//span[normalize-space()='Enabled']

${NEW_USERNAME_FIELD}   xpath=//label[normalize-space()='Username']/following::input[1]

${NEW_PASSWORD_FIELD}   xpath=//label[normalize-space()='Password']/following::input[1]  

${CONFIRM_PASSWORD_FIELD}    xpath=//label[normalize-space()='Confirm Password']/ancestor::div[contains(@class,'oxd-input-group')]//input

${SAVE_BUTTON}          xpath=//button[normalize-space()='Save']