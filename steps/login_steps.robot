*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/login_locators.yaml

*** Keywords ***
User access Sauce Demo website
    Go To    https://www.saucedemo.com/

User input Username ${username}
    Input Text    ${username_field}    ${username}

User input Password ${password}
    Input Text    ${password_field}    ${password}

User click Login button
    Click Button    ${login_button}

User successfully login to Sauce Demo website
    Wait Until Page Contains    Products
    Sleep    2s