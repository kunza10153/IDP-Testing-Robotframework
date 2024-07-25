*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Variables ***
${URL}                 http://10.35.29.184/
${USERNAME}            64070507212
${PASSWORD}            Kunza!!!10153

*** Keywords ***
Login to Application
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Input Text      ${Text_username}     ${USERNAME}
    Sleep           1s
    Input Password  ${Text_password}   ${PASSWORD}
    Click Button    ${Button_login} 
    Wait Until Element Is Visible    ${ROLE}

Select And Submit Role
    Sleep           1s
    Click Element   ${ROLE}
    Sleep           1s
    Click Button    ${SUBMITROLE}

