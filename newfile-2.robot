*** Settings ***
Library    Selenium2Library
*** Test Cases ***
 Login to saucedemo 
   Open Browser     https://www.saucedemo.com/    chrome
   Maximize browser window 

   input text     xpath= //input[@id="user-name"]  standard_user
   input text     xpath= //input[@id="password"]    secret_sauce
   Click Button   xpath= //input[@id="login-button"]
   Sleep    3s
   
   Element Should Be Visible   //div[contains(@class,"inventory_item_price")]
    #Text xpath
   Element Should Be Visible  xpath=//div[text()="Sauce Labs Backpack"]
    #starts with
   Element Should Be Visible    //div[starts-with(@data-test,"inventory-item")]
    #contains()
   Element Should Be Visible   //div[contains(@class,"inventory_item_name")]
   Element Should Be Visible   //div[contains(@class,"inventory_item_price")]
    
    #AND 
   Element Should Be Visible    //div[@data-test='inventory-item-name' and text( )='Sauce Labs Backpack']
   Click Button            //button[contains(@id,'add-to-cart')]
   Element Should Not Be Visible    //div[@data-test='inventory-item-name' and text( )='Sauce Labs ']
   Click Button        //button[contains(@id,'add-to-cart')]
   Page Should Contain   2
   #parent
   Element Should Be Visible        //div[@class="inventory_list"]/parent::div
   Click Link         xpath=//a[text( )='Facebook'] 

   Sleep    5s
   Close Browser   

