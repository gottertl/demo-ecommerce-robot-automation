*** Settings ***
Documentation       This is the page object for the Home Page

Resource            ${EXECDIR}/resources/Base.robot


*** Keywords ***
Validate Logged In
    Wait For Elements State     css=.title >> text=Products      visible     5