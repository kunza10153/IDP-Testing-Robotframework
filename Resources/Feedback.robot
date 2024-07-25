*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Variables ***
${URL}                 http://10.35.29.184/
${test1}               test1
${MYURL}               http://10.35.29.184/development/64070507212
${textfeedback}        กล้ามาก เก่งมาก ขอบใจมาก

*** Keywords ***
Login to Application 
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Input Text      ${Text_username}     ${USERNAME}
    Sleep           1s
    Input Password  ${Text_password}   ${PASSWORD}
    Click Button    ${Button_login} 
    Wait Until Element Is Visible    ${ROLE_HEADER}

Select And Submit Role
    Sleep           1s
    Click Element   ${ROLE_HEADER}
    Sleep           1s
    Click Button    ${SUBMITROLE}

Select Add Feedback Develop    
    Go To           ${MYURL}  

    Wait Until Element Is Visible    ${DEVERLOPPERSONTAB3}     
    Click Element   ${DEVERLOPPERSONTAB3}

    Wait Until Element Is Visible    ${ADDFEEDBACK}     
    Click Element   ${ADDFEEDBACK} 

    Set Focus To Element  ${AREAFEEDBACK} 
    Click Element   ${AREAFEEDBACK} 

    Input Text      ${AREAFEEDBACK}     ${textfeedback}  

    Wait Until Element Is Visible       ${SUBMIT_FEEDBACK} 
    Click Element   ${SUBMIT_FEEDBACK}      