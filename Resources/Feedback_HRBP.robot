*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Variables ***
${URL}                 http://10.35.29.184/
${test1}               test1
${MYURL}               http://10.35.29.184/development/64070507212
${textfeedback}        กล้ามาก เก่งมาก ขอบใจมาก HRBP

*** Keywords ***
Login to Application 
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Input Text      ${Text_username}     ${USERNAME}
    Sleep           1s
    Input Password  ${Text_password}   ${PASSWORD}
    Click Button    ${Button_login} 
    Wait Until Element Is Visible    ${ROLE_HRBP}

Select And Submit Role
    Sleep           1s
    Click Element   ${ROLE_HRBP}
    Sleep           1s
    Click Button    ${SUBMITROLE}

Select Add Feedback HRBP Develop    
    Go To           ${MYURL}  
    Sleep           5
    Wait Until Element Is Visible    ${ADDFEEDBACK_HRBP}     
    Click Element   ${ADDFEEDBACK_HRBP} 
    
    Wait Until Element Is Visible    ${SELECTDROPDOWNFIRST_HRBP}     
    Click Element   ${SELECTDROPDOWNFIRST_HRBP} 
    Wait Until Element Is Visible    ${SELECTINFIRSTDROPDOWN_HRBP}     
    Click Element   ${SELECTINFIRSTDROPDOWN_HRBP} 

    Click Element   ${SPACE_HRBP}

    Wait Until Element Is Visible    ${SELECTDROPDOWNSECOND_HRBP}     
    Click Element   ${SELECTDROPDOWNSECOND_HRBP} 
    Wait Until Element Is Visible    ${SELECTINSECONDDROPDOWN_HRBP}     
    Click Element   ${SELECTINSECONDDROPDOWN_HRBP} 
 
    Click Element   ${SPACE2_HRBP}

    Input Text      ${AREAFEEDBACK_HRBP}     ${textfeedback}  

    Wait Until Element Is Visible       ${SUBMIT_FEEDBACK_HRBP} 
    Click Element   ${SUBMIT_FEEDBACK_HRBP} 

    # Sleep           5s
    
    # Wait Until Element Is Visible    ${DELATEFEEDBACK_HRBP}     
    # Click Element   ${DELATEFEEDBACK_HRBP} 
    # Wait Until Element Is Visible    ${CONFIRMDELETE_HRBP}     
    # Click Element   ${CONFIRMDELETE_HRBP} 
