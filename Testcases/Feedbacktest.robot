*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Feedback.robot

*** Variables ***
${USERNAME}            sanan.sra
${PASSWORD}            password

*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role  

Add Feedback Develop
    Select Add Feedback Develop    