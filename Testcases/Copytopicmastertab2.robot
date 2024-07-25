*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Loginkeyword.robot
Resource    ../Resources/Copytopicsecondtabmaster.robot


*** Variables ***
${USERNAME}            64070507212
${PASSWORD}            password

*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role

Test Master Data Second Tab
    Select Settings Icon
    Select Settings Master Data
    Select Second Tab
    Copy Topic Second Tab
    Get Alert Message Equal 