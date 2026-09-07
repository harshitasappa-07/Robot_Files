*** Settings ***
Library    SeleniumLibrary

Resource      ../variables/common_variables.robot
Resource      ../variables/test_data.robot

Resource    ../keywords/common_keywords.robot
Resource    ../keywords/login_keywords.robot
Resource    ../keywords/products_keyword.robot
Resource    ../keywords/cart_keywords.robot
Resource    ../keywords/checkout_keywords.robot

Suite Setup       Open Application
Suite Teardown    Close Application


*** Test Cases ***

Open SauceDemo
    Title Should Be    Swag Labs


Valid Login
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Verify Login Successful


Verify Products
    Verify Products Page


Add One Product
    Add Product To Cart    ${PRODUCT_1}


Add Multiple Products
    Add Product To Cart    ${PRODUCT_2}


Remove Product
    Open Cart
    Verify Product In Cart    ${PRODUCT_1}
    Remove Product    ${PRODUCT_1}


Continue Shopping
    Continue Shopping
    Verify Products Page


Add Product For Checkout
    Add Product To Cart    ${PRODUCT_1}
    Open Cart
    Verify Product In Cart    ${PRODUCT_1}


Complete Checkout
    Checkout
    Enter Checkout Details
    ...    ${FIRST_NAME}
    ...    ${LAST_NAME}
    ...    ${POSTAL_CODE}
    Continue Checkout
    Finish Order
    Verify Order Completed


Logout From Application
    Logout