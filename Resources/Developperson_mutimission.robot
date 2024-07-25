*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Variables ***
${URL}                 http://10.35.29.184/
${USERNAME}            64070507212
${PASSWORD}            Kunza!!!10153
${test1}               test1
${MYURL}               http://10.35.29.184/development/64070507212
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

Select Mutimission In Mission
    [Arguments]     ${nametest}    ${numberdropdown1}   ${numberdropdown2}    ${numberdropdown3}      ${numberbutton}
    
    Sleep       3
    Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${numberbutton}]/button
    Click Element   xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${numberbutton}]/button
    Sleep           1s
    Input Text      ${NAMEMISSION}       ${nametest}
    
    Wait Until Element Is Visible    ${SELECTDROPDOWNINSIDE}  
    Click Element   ${SELECTDROPDOWNINSIDE} 
    Wait Until Element Is Visible    ${SELECTFIRST}
    Click Element   css=body > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(${numberdropdown1}) > div:nth-child(4) > div:nth-child(1)
    Click Element   ${SPACE}

    Wait Until Element Is Visible   ${SELECTDROPDOWNINSIDE2}  
    Click Element   ${SELECTDROPDOWNINSIDE2}  
    Wait Until Element Is Visible    ${SELECTFIRST2_1}
    Click Element   css=body > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(${numberdropdown2}) > div:nth-child(4) > div:nth-child(1)

    Click Element   ${SPACE1}

    Wait Until Element Is Visible    ${SELECTDROPDOWNINSIDE3} 
    Click Element   ${SELECTDROPDOWNINSIDE3} 
    Wait Until Element Is Visible    ${SELECTFIRST3_1}   
    Click Element   css=body > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(${numberdropdown3}) > div:nth-child(4) > div:nth-child(1)
    
    Sleep           1s
    Click Button    ${SUBMIT_BUTTONINSIDE} 

    Sleep       3s

Delete Mutimission
    [Arguments]        ${deletemul1}       ${deletemul2}        ${deletemul3}
    Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${deletemul1}]/div[2]/div/div/div[2]/div[5]/button[3]
    Click Element      xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${deletemul1}]/div[2]/div/div/div[2]/div[5]/button[3]
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]  
    Click Element      xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]  

    sleep   3s
                                        
    Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${deletemul2}]/div[2]/div/div/div[2]/div[5]/button[3]
    Click Element      xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${deletemul2}]/div[2]/div/div/div[2]/div[5]/button[3]
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]  
    Click Element      xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]  
    
    sleep   3s
    
    Wait Until Element Is Visible    xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${deletemul3}]/div[2]/div/div/div[2]/div[5]/button[3]
    Click Element      xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[1]/div[${deletemul3}]/div[2]/div/div/div[2]/div[5]/button[3]
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]  
    Click Element      xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]  

