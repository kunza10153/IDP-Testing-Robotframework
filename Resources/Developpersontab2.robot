*** Settings ***
Library    SeleniumLibrary
Library    String
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

Select Add Topic Develop
    [Arguments]     ${text2}    ${text3}    ${text4}
    Wait Until Element Is Visible    ${DEVERLOPPERSONTAB2}     
    Click Element   ${DEVERLOPPERSONTAB2}

    Wait Until Element Is Visible    ${ADDTOPICDEVERLOP}     
    Click Element   ${ADDTOPICDEVERLOP} 
    
    Wait Until Element Is Visible    ${SELECTDROPDOWNFIRSTTAB2_1}
    Click Element   ${SELECTDROPDOWNFIRSTTAB2_1} 
    Wait Until Element Is Visible    ${SELECTDROPDOWNFIRSTTAB2_1_1}      
    Click Element   ${SELECTDROPDOWNFIRSTTAB2_1_1}


    Input Text      ${INPUTTEXTTAB2_2}         ${text2}
    Input Text      ${INPUTTEXTTAB2_3}         ${text3}
    Input Text      ${INPUTTEXTTAB2_4}         ${text4}

    
    Click Element   ${CLICKCALENDERSTART}               
    Wait Until Element Is Visible    ${SELECTDAYSTART}  
    Sleep           3s   
    Click Element   ${SELECTDAYSTART}

    Sleep           3s
    Click Element   ${CLICKCALENDERFINAL}               
    Wait Until Element Is Visible    ${SELECTDAYFINAL}
    Sleep           3s     
    Click Element   ${SELECTDAYFINAL} 

    
    Wait Until Element Is Visible    ${SUBMITINFOTAB2}      
    Click Button   ${SUBMITINFOTAB2}  


Verify Text In Tab2
    [Documentation]    This test case verifies that the text of an element is as expected.
    [Arguments]     ${TEXTTEST1}   ${TEXTTEST2}   ${TEXTTEST3}  ${TEXTTEST4}  ${TEXTTEST5}  ${TEXTTEST6}  ${TEXTTEST7}  ${TEXTTEST8}  ${TEXTTEST9}
    Wait Until Element Is Visible    ${DEVERLOPPERSONTAB2}     
    Click Element   ${DEVERLOPPERSONTAB2}


    Wait Until Element Is Visible    ${NUMBERMISSION2} 
    Element Text Should Be    ${NUMBERMISSION2}    ${TEXTTEST1} 

    Wait Until Element Is Visible    ${NAMEMISSION_VERIFY2} 
    Element Text Should Be    ${NAMEMISSION_VERIFY2}    ${TEXTTEST2} 

    #In table
    Wait Until Element Is Visible    ${NAMEINMISSION_VERIFY2} 
    Element Text Should Be    ${NAMEINMISSION_VERIFY2}    ${TEXTTEST3} 

    Wait Until Element Is Visible    ${SAMUTTANA_VERIFY2} 
    Element Text Should Be    ${SAMUTTANA_VERIFY2}    ${TEXTTEST4} 

    Wait Until Element Is Visible    ${LEARNINGAPPOINT_VERIFY2} 
    Element Text Should Be    ${LEARNINGAPPOINT_VERIFY2}    ${TEXTTEST5} 

    Wait Until Element Is Visible    ${METHODDEVELOP_VERIFY2} 
    Element Text Should Be    ${METHODDEVELOP_VERIFY2}    ${TEXTTEST6}     

    Wait Until Element Is Visible    ${AGREEMENTDEVELOP_VERIFY2} 
    Element Text Should Be    ${AGREEMENTDEVELOP_VERIFY2}    ${TEXTTEST7} 

    Wait Until Element Is Visible    ${EXPENSE_VERIFY2} 
    Element Text Should Be    ${EXPENSE_VERIFY2}    ${TEXTTEST8} 

    #Wait Until Element Is Visible    ${TIME_VERIFY2}
    #Element Text Should Be      ${TIME_VERIFY2}    ${TEXTTEST9}