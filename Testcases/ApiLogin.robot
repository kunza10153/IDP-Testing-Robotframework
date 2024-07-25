*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    RequestsLibrary
Library    JSONLibrary 
Library    String
Resource    ../Resources/Checkdropdown.robot

*** Variables ***
${URL}     http://10.35.29.184
${DROPDOWNINDEXZERO}        ตัวอย่างเป้าหมาย หนึ่ง
${DROPDOWNINDEXONE}         เพื่อการเลื่อนระดับหรือสู่ตำแหน่งที่สูงขึ้น
${USERNAME}            64070507212
${PASSWORD}            password


*** Test Cases ***
Check API login
  Create Session    login    ${URL}    verify=true
  ${body}    Load Json From File    PageObjects/Request-json/Post_login.json
  Log    ${body}    #To show all text in ${body}
  ${response}       POST On Session    login     /api/auth/login  json=${body}
  Log    ${response.status_code}
  Log    ${response.content}
  
  ${return_code}    Convert To String    ${response.status_code}
  Should Be Equal    ${return_code}    200

  # ${return_access_token}     Set Variable    ${response.json()}[access_token]
  # Set Global Variable    ${return_access_token}
  # Log    ${return_access_token}

  ${response}=    TO JSON    ${response.text}
  set test variable   ${access_token}     ${response['access_token']}
  ${access_token}=    Remove String    ${access_token}       '
  set Global variable   ${keycloke_access_token}       ${access_token}
  Log    ${keycloke_access_token}

Check API get_user
  Log    ${keycloke_access_token}
  Create Session    get_user    ${URL}    verify=true  
  ${header}    Create Dictionary    Content-Type=application/json    Authorization=Bearer ${keycloke_access_token}  
  ${response}    GET On Session    get_user    /api/master-data    headers=${header}
  
  ${return_code}    Convert To String    ${response.status_code}
  Should Be Equal    ${return_code}    200

  ${json_response}    To JSON    ${response.content}
  ${name_TH}    Get From Dictionary    ${json_response['mst_goal_option'][0]}    name_TH
  ${name_TH2}    Get From Dictionary    ${json_response['mst_goal_option'][1]}    name_TH

  Login to Application    ${USERNAME}    ${PASSWORD}
  Select And Submit Role
  Check Dropdown mission  ${name_TH} 

