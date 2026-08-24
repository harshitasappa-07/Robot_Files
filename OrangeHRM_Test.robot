*** Settings ***
Resource     keywords.robot

*** Test Cases ***
Create New OrangeHRM User

   Open OrangeHRM
    Login To OrangeHRM
    Go To Admin
    Click Add User
    Select User Role
    Select Employee
    Select Status
    Enter New Username
    Enter New Password
    Enter Confirm Password
    Save User
Close OrangeHRM
    Close Browser

    
   
