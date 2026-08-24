***settings***
Library    Selenium2Library
*** Test Cases ***
login to saucedemo
    open browser      https://www.saucedemo.com/    chrome
    Maximize browser window
    input text     xpath= //input[@id="user-name"]  standard_user
    input text     xpath= //input[@id="password"]    secret_sauce
    Click Button   xpath= //input[@id="login-button"] 

    Page Should Contain     Swag Labs 
    
    Close Browser
