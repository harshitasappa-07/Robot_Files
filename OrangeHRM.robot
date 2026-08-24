*** Settings ***
Library      Selenium2Library
*** Variables ***
${URL}        https://opensource-demo.orangehrmlive.com/
${USERNAME}    Admin
${PASSWORD}    admin123
${EMPLOYEE}    John
${NEW_USERNAME}   Testuser123
${NEW_PASSWORD}    Testuser@123

*** Test Cases ***
Login to OrangeHRM
   Open Browser         https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window
    Wait Until Element Is Visible        xpath=//input[@placeholder="Username"]   10s
    input text           xpath=//input[@placeholder="Username"]     Admin
    Wait Until Element Is Visible      xpath=//input[@name="password"]      10s
    input text       xpath=//input[@name="password"]     admin123
    Click Button     xpath=//button[@type="submit"]
#Go to admin 
    Wait Until Element Is Visible       xpath=//span[normalize-space()='Admin']   10s
    Click Element          xpath=//span[normalize-space()='Admin']
#Click add
    Wait Until Element Is Visible  xpath=//button[normalize-space()='Add']   10s
    Click Button     xpath=//button[normalize-space()='Add']
#user role
   Wait Until Element Is Enabled  xpath=//div[contains(@class,'oxd-select-text')]
   Click Element   //div[contains(@class,'oxd-select-text')]
   Wait Until Element Is Visible      xpath=//span[normalize-space()='ESS']
   Click Element   //span[normalize-space()='ESS']
#employee name
   Click Element      xpath=//input[@placeholder='Type for hints...']
   input text            xpath=//input[@placeholder='Type for hints...']   John
   Sleep      2s 
   Click Element      xpath=//div[contains(@class,'oxd-autocomplete-option')]//span[normalize-space()='John David Smith']
#status
   Click Element      xpath=//label[normalize-space()='Status']/following::div[contains(@class,'oxd-select-text')][1]
   Click Element     xpath=//div[contains(@class,'oxd-select-option')]//span[normalize-space()='Enabled']
#username 
   input text      xpath= //label[normalize-space()='Username']/following::input[1]    Testuser123
#password
   input text      xpath=//label[normalize-space( )='Password']/following::input[1]    Testuser@123
#confirm password
   input text     xpath=//label[normalize-space()='Confirm Password']/ancestor::div[contains(@class,'oxd-input-group')]//input   Testuser@123
#save
   Click Button    xpath= //button[normalize-space()='Save'] 
  
   close browser


   