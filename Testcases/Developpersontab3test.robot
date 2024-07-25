*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Developpersontab3.robot

*** Variables ***
${USERNAME}            64070507212
${PASSWORD}            password


*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role  

Add Result Develop Tab3
    Select Result Tab Develop
    