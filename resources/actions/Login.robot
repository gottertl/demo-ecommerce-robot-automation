*** Settings ***
Documentation       This is the page object for the Login Page

Resource            ${EXECDIR}/resources/Base.robot

*** Variables ***
${user_field}       id=user-name
${password_field}   id=password
${login_button}     id=login-button

*** Keywords ***
Login With
    [Arguments]     ${username}         ${password}
    Fill Text       ${user_field}       ${username}
    Fill Text       ${password_field}   ${password}
    Click           ${login_button}


Check Error Message
    [Arguments]     ${expected_error}
    Wait For Elements State     css=.error-message-container >> text=${expected_error}  visible     5
