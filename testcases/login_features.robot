*** Settings ***
Library            SeleniumLibrary
Resource           ../steps/login_steps.robot
Suite Setup        Open Browser    about:blank    Firefox
Suite Teardown     Close Browser

*** Test Cases ***
Login using valid credential
    [Template]    Scenario Outline Login using valid credential
    standard_user    secret_sauce
    problem_user    secret_sauce
    performance_glitch_user    secret_sauce
    # error_user    secret_sauce
    # visual_user    secret_sauce

*** Keywords ***
Scenario Outline Login using valid credential
    [Arguments]    ${username}    ${password}
    Given User access Sauce Demo website
    When User input Username ${username}
    And User input Password ${password}
    And User click Login button
    Then User successfully login to Sauce Demo website