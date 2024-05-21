*** Settings ***
Library            SeleniumLibrary
Variables          ../variables/login_locators.yaml
Suite Setup        Open browser    about:blank    Firefox
Suite Teardown     Close Browser


*** Test Cases ***
Login using valid credential
    [Template]    Login using valid credential
    standard_user
    problem_user
    performance_glitch_user
    error_user
    visual_user

Login locked_out_user
    Go To    https:/www.saucedemo.com/
    Input Text    ${username_field}    locked_out_user
    Input Text    ${password_field}    secret_sauce
    Click Button    ${login_button}
    Wait Until Page Contains    Sorry, this user has been locked out
    Sleep    3s

*** Keywords ***
Login using valid credential
    [Arguments]    ${username}
    Go To    https:/www.saucedemo.com/
    Input Text    ${username_field}    ${username}
    Input Text    ${password_field}    secret_sauce
    Click Button    ${login_button}
    Wait Until Page Contains    Products
    Sleep    3s