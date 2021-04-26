*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Valid user should be able to login
    Open Browser  https://www.saucedemo.com/  firefox
    Input Text  id=user-name  standard_user
    Input Password  id=password  secret_sauce
    Click Button  id=login-button
    Wait Until Element Is Visible  id=react-burger-menu-btn
    Click Element  id=react-burger-menu-btn
    Click Link  id=logout_sidebar_link
    Close Browser

*** Keywords ***
