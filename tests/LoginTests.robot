*** Settings ***
Documentation   Tests login features

Resource        ${EXECDIR}/resources/Base.robot

Suite Setup      Setup
Test Teardown    Teardown

*** Variables ***
${username}             standard_user
${password}             secret_sauce
${invalid_user}         invalid_user


*** Test Cases ***
Scenario: Successful Login
    [Tags]      login   smoke
    Login With                  ${username}     ${password}
    Validate Logged In

    [Teardown]
    Clear LS And Finish


Scenario: Blank Username
    [Tags]      login   login_fail
    Login With                  ${EMPTY}        ${password}
    Check Error Message         Epic sadface: Username is required


Scenario: Blank Password
    [Tags]      login   login_fail
    Login With                  ${username}    ${EMPTY}
    Check Error Message         Epic sadface: Password is required


Scenario: Invalid Credentials
    [tags]      login   login_fail
    Login With                  ${invalid_user}    ${password}
    Check Error Message         Epic sadface: Username and password do not match any user in this service