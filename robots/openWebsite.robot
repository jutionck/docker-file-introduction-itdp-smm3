*** Settings ***
Library     SeleniumLibrary
Resource    ./resources/init.robot
Suite Setup     Open Browser to    https://www.saucedemo.com/

*** Variables ***
${USERNAME}            standard_user
${PASSWORD}            secret_sauce
${USERNAME_FIELD}      //*[@id="user-name"]
${PASSWORD_FIELD}      //*[@id="password"]
${LOGIN_BTN_FIELD}     //*[@id="login-button"]
${REMOTE_URL}

*** Test Cases ***
As a User I Can Open Browser Enigma Camp
    Input Text  ${USERNAME_FIELD}    ${USERNAME}
    Input Password  ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button  ${LOGIN_BTN_FIELD}
    Sleep  1
    Close Browser