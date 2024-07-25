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

Select Mission Personal
    Go to           ${MYURL}  
    Sleep           5s
    Wait Until Element Is Visible    ${ADDMISSION} 
    Click Element   ${ADDMISSION} 
    Wait Until Element Is Visible    ${SELECTDROPDOWN}
    Click Element   ${SELECTDROPDOWN}  
    Wait Until Element Is Visible    ${SELECTDROPDOWNFIRST}  
    Click Element   ${SELECTDROPDOWNFIRST}  
    Click Button    ${SUBMITMISSION}

Select More In Mission
    [Arguments]     ${nametest}
    Wait Until Element Is Visible    ${BUTTONINSIDEMISSION}
    Click Element   ${BUTTONINSIDEMISSION} 
    Sleep           1s
    Input Text      ${NAMEMISSION}       ${nametest}
    
    Wait Until Element Is Visible    ${SELECTDROPDOWNINSIDE}  
    Click Element   ${SELECTDROPDOWNINSIDE} 
    Wait Until Element Is Visible    ${SELECTFIRST}
    Click Element   ${SELECTFIRST} 

    Click Element   ${SPACE}

    Wait Until Element Is Visible   ${SELECTDROPDOWNINSIDE2}  
    Click Element   ${SELECTDROPDOWNINSIDE2}  
    Wait Until Element Is Visible    ${SELECTFIRST2_1}
    Click Element   ${SELECTFIRST2_1}

    Click Element   ${SPACE1}

    Wait Until Element Is Visible    ${SELECTDROPDOWNINSIDE3} 
    Click Element   ${SELECTDROPDOWNINSIDE3} 
    Wait Until Element Is Visible    ${SELECTFIRST3_1}   
    Click Element   ${SELECTFIRST3_1}
    
    Sleep           1s
    Click Button    ${SUBMIT_BUTTONINSIDE} 

Verify Text In Tab1
    [Documentation]    This test case verifies that the text of an element is as expected.
    [Arguments]     ${TEXTTEST1}   ${TEXTTEST2}   ${TEXTTEST3}  ${TEXTTEST4}  ${TEXTTEST5}  ${TEXTTEST6}
    Wait Until Element Is Visible    ${NUMBERMISSION} 
    Element Text Should Be    ${NUMBERMISSION}    ${TEXTTEST1} 

    #In table
    Wait Until Element Is Visible    ${NAMEMISSION_VERIFY} 
    Element Text Should Be    ${NAMEMISSION_VERIFY}    ${TEXTTEST2} 

    Wait Until Element Is Visible    ${NAMEINMISSION_VERIFY} 
    Element Text Should Be    ${NAMEINMISSION_VERIFY}    ${TEXTTEST3} 

    Wait Until Element Is Visible    ${EXPECTRESULT_VERIFY} 
    Element Text Should Be    ${EXPECTRESULT_VERIFY}    ${TEXTTEST4} 

    Wait Until Element Is Visible    ${SAMUTTANA_VERIFY} 
    Element Text Should Be    ${SAMUTTANA_VERIFY}    ${TEXTTEST5} 

    Wait Until Element Is Visible    ${RESOURCERECIVE_VERIFY} 
    Element Text Should Be    ${RESOURCERECIVE_VERIFY}    ${TEXTTEST6} 
    # ${test}         Get Text   ${NUMBERMISSION} 
    # Should Be Equal     ${test}     ${TEXTTEST} 