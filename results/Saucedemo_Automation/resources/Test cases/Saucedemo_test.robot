*** Settings ***
Library    SeleniumLibrary

Resource    ../Variables/common_variables.robot
Resource    ../Variables/test_data.robot

Resource    ../Keywords/common_keywords.robot
Resource    ../Keywords/login_keywords.robot
Resource    ../Keywords/products_keyword.robot
Resource    ../Keywords/cart_keywords.robot
Resource    ../Keywords/checkout_keywords.robot

Test Setup       Open Application
Task Teardown    Close Application


*** Test Cases ***
Verify SauceDemo Application Opens Successfully
    [Documentation]    Verify that the SauceDemo application opens successfully and displays the correct title.
    Title Should Be    Swag Labs


Verify User Can Login Successfully
    [Documentation]    Verify that a valid user can login to SauceDemo successfully.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Verify Login Successful


Verify User Can Add One Product To Cart
    [Documentation]    Verify that the user can add a single product to the shopping cart.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Add Product To Cart    ${PRODUCT_1}
    Open Cart
    Verify Product In Cart    ${PRODUCT_1}


 Verify User Can Add Multiple Products To Cart
    [Documentation]    Verify that the user can add multiple products to the shopping cart.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Add Product To Cart    ${PRODUCT_1}
    Add Product To Cart    ${PRODUCT_2}
    Open Cart
    Verify Product In Cart    ${PRODUCT_1}
    Verify Product In Cart    ${PRODUCT_2}


Verify User Can Remove Product From Cart
    [Documentation]    Verify that the user can remove a product from the shopping cart.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Add Product To Cart    ${PRODUCT_1}
    Open Cart
    Verify Product In Cart    ${PRODUCT_1}
    Remove Product    ${PRODUCT_1}


Verify User Can Continue Shopping From Cart
    [Documentation]    Verify that the user can return to the Products page from the shopping cart.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Add Product To Cart    ${PRODUCT_1}
    Open Cart
    Continue Shopping
    Verify Products Page


Verify User Can Add Product And Proceed To Checkout
    [Documentation]    Verify that the user can add a product, open the cart and proceed towards checkout.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Add Product To Cart    ${PRODUCT_1}
    Open Cart
    Verify Product In Cart    ${PRODUCT_1}
    Checkout


Verify User Can Complete Checkout Successfully
    [Documentation]    Verify that the user can complete the checkout process with valid customer details.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Add Product To Cart    ${PRODUCT_1}
    Open Cart
    Verify Product In Cart    ${PRODUCT_1}
    Checkout
    Enter Checkout Details
    ...    ${FIRST_NAME}
    ...    ${LAST_NAME}
    ...    ${POSTAL_CODE}
    Continue Checkout
    Finish Order
    Verify Order Completed


Verify User Can Logout Successfully
    [Documentation]    Verify that a logged-in user can logout from SauceDemo successfully.
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Verify Login Successful
    Logout