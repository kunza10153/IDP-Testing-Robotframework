*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Loginkeyword.robot


*** Variables ***
${USERNAME}            64070507212
${PASSWORD}            password


*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role