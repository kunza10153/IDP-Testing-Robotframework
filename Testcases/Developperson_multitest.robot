*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Developperson_mutimission.robot

*** Variables ***
${USERNAME}            64070507212
${PASSWORD}            password
${test1}               test1
${MYURL}               http://10.35.29.184/development/64070507212


*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role  

Add mission Personal multimission   
    [Template]   Select Mutimission In Mission
    multi1       2       3       4      5
    multi2       5       2       3      6
    multi3       2       3       5      7

Delete mission  
    Delete Mutimission      5       5      5
    
    