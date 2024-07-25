*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Feedback_HRBP.robot

*** Variables ***
${USERNAME}            thidakan.cha
${PASSWORD}            password


*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role  

Add Feedback_HRBP Develop
    Select Add Feedback HRBP Develop           