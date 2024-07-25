*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Variables ***
${NAMESECOND}          ตัวอย่างผลลัพธ์ที่ต้องการ หนึ่ง
${ENGNAMESECOND}       example outcome one

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
Select Second Tab
    Wait Until Element Is Visible     ${RESULTTAB}
    Click Button                      ${RESULTTAB}

Copy Topic Second Tab
    Wait Until Element Is Visible     ${COPYDATASECONDTAB}
    Click Button                      ${COPYDATASECONDTAB}
    Wait Until Element Is Visible     ${SUBMITSECONDTAB}
    Click Button                      ${SUBMITSECONDTAB}

Get Alert Message Equal 
    ${alert_text}=  Handle Alert  ACCEPT
    Should Be Equal As Strings  ${alert_text}  ต้องระบุ mission outcomes ที่ไม่ซ้ำกับที่มีอยู่แล้วในระบบ

