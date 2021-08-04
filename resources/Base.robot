*** Settings ***

Library                 Browser

Resource                Helpers.robot
Resource                ${EXECDIR}/resources/actions/Home.robot
Resource                ${EXECDIR}/resources/actions/Product.robot
Resource                ${EXECDIR}/resources/actions/Login.robot

*** Variables ***
${URL}                  https://www.saucedemo.com/
${BROWSER}              chromium

*** Keywords ***
Setup
    New Browser         ${BROWSER}      ${HEADLESS}
    New Page            ${URL}

Teardown
    Take Screenshot

Clear LS And Finish
    Take Screenshot
    Go To               ${URL}