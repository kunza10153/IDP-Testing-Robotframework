*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Variables ***
${TEXT_TH}             เทสออโต้เมสหนึ่ง
${TEXT_EN}             testautomate1

*** Keywords ***
Select Settings Icon
    Wait Until Element Is Visible    ${ICONSETTING}
    Scroll Element Into View         ${ICONSETTING}
    Click Element                    ${ICONSETTING}

Select Settings Master Data
    Wait Until Element Is Visible    ${SETTINGSMSTRDATA}
    Scroll Element Into View         ${SETTINGSMSTRDATA}
    Click Element                    ${SETTINGSMSTRDATA}
    Sleep                            1s

Add Topic
    [Arguments]    ${TEXT_TH}      ${TEXT_EN}
    Wait Until Element Is Visible    ${ADDDATA}
    Click Button                     ${ADDDATA}  
    Input Text                       ${TEXTINPUTTHAI}    ${TEXT_TH}
    Sleep                            1s
    Input Text                       ${TEXTINPUTENG}     ${TEXT_EN}
    Sleep                            1s
    Click Button                     ${SUBMIT_BUTTON}  