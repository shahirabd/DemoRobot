*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User add backpack to cart
    Open Browser  https://www.saucedemo.com/  firefox
    Input Text  id=user-name  standard_user
    Input Password  id=password  secret_sauce
    Click Button  id=login-button
    Wait Until Element Is Visible  id=add-to-cart-sauce-labs-backpack
    Click Element  id=add-to-cart-sauce-labs-backpack
    Wait Until Element Is Visible  id=remove-sauce-labs-backpack
    Click Element  id=react-burger-menu-btn
    Click Link  id=logout_sidebar_link
    Close Browser

*** Keywords ***