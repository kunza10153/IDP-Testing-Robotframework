*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Variables ***
${URL}                 http://10.35.29.184/
${USERNAME}            64070507212
${PASSWORD}            Kunza!!!10153
${test1}               เก่งจ้า resulttab
${MYURL}               http://10.35.29.184/development/64070507212
${file}                /Users/macbook/Desktop/Test_Robotframework/test_file.pdf
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

Select Result Tab Develop
    Go To           ${MYURL}  

    Wait Until Element Is Visible    ${DEVERLOPPERSONTAB3}     
    Click Element   ${DEVERLOPPERSONTAB3}

    Wait Until Element Is Visible    ${EDITRESULT}     
    Click Element   ${EDITRESULT} 
    
    Set Focus To Element             ${TEXTFILLRESULT}
    Wait Until Element Is Visible    ${TEXTFILLRESULT}
    Input Text                       ${TEXTFILLRESULT}   ${test1}  

    Choose file         ${INPUTFILE}     ${file}                            

    Wait Until Element Is Visible    ${SUBMIT_RESULTTAB}      
    Click Element   ${SUBMIT_RESULTTAB}


    