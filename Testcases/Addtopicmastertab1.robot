*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Loginkeyword.robot
Resource    ../Resources/Addtopicfirsttabmaster.robot


*** Variables ***
${USERNAME}            64070507212
${PASSWORD}            password
${TEXT_TH}             เทสออโต้เมสหนึ่ง
${TEXT_EN}             testautomate1

*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role
Add Topic Master First Tab
    Select Settings Icon
    Select Settings Master Data
    Add Topic               ${TEXT_TH}     ${TEXT_EN}                         