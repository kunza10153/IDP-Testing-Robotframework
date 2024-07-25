*** Variables ***
#login
${Text_username}      xpath=//*[@id="username"]
${Text_password}      xpath=//*[@id="password"]
${Button_login}       xpath=//*[@id="app"]/div/div/main/div/div/div/div/div[4]/form/div[4]/button
${ROLE}               xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[2]/div/div/div/div[2]/div
${ROLE_HEADER}        xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[2]/div/div/div/div[2]/div
${ROLE_HRBP}          xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[2]/div/div/div/div[3]/div
${SUBMITROLE}         xpath=/html/body/div[2]/div/div/div/div[2]/div[3]/div[3]/button

#setting masterdata add first tab
${ICONSETTING}        xpath=//*[@id="app"]/div/div/header/div/button[1]/span[3]/i
${SETTINGSMSTRDATA}   xpath=//*[@id="app"]/div/div/nav/div/div/div[6]/div/button
${ADDDATA}            xpath=//*[@id="app"]/div/div/main/div/div/div[3]/div/div/div[3]/div/div[1]/div/div[1]/div[2]/button
${TEXTINPUTTHAI}      xpath=//*[@id="Tab1Input1"]
${TEXTINPUTENG}       xpath=//*[@id="Tab1Input2"]
${SUBMIT_BUTTON}      xpath=//*[@id="app"]/div/div/main/div/div/nav/div/form/div/div[4]/div/div/div[2]/button

#setting masterdata copy seccond tab
${RESULTTAB}          xpath=//*[@id="app"]/div/div/main/div/div/div[3]/div/div/div[2]/div/div/button[2]
${COPYDATASECONDTAB}  xpath=//*[@id="app"]/div/div/main/div/div/div[3]/div/div/div[3]/div/div[2]/div/div[2]/div/div[2]/div/div[1]/table/tbody/tr/td[5]/button[2]
${SUBMITSECONDTAB}    xpath=//*[@id="app"]/div/div/main/div/div/nav/div/form/div/div[4]/div/div/div[2]/button


#Deverlop personal
${ADDMISSION}           xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[3]/button
${SELECTDROPDOWN}       xpath=//*[@id="app"]/div/div/main/div/div/nav[1]/div/form/div/div[2]/div/div/div/div/div[3]/div
${SELECTDROPDOWNFIRST}  xpath=//div[contains(text(),'เพื่อให้ทำงานได้ตาม Job Description')]
${SUBMITMISSION}        xpath=//*[@id="app"]/div/div/main/div/div/nav[1]/div/form/div/div[4]/div/div/div[2]/button

#Deverlop Inside
${BUTTONINSIDEMISSION}      xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div/div[4]/button

${NAMEMISSION}              xpath=//*[@id="Tab1MissionNameInput"]

${SELECTDROPDOWNINSIDE}     xpath=//*[@id="app"]/div/div/main/div/div/nav[2]/div/form/div/div[4]/div/div/div/div/div[3]/div
${SELECTFIRST}              css=body > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(4) > div:nth-child(1)

${SELECTDROPDOWNINSIDE2}    xpath=//*[@id="app"]/div/div/main/div/div/nav[2]/div/form/div/div[5]/div/div/div/div/div[3]/div
${SELECTFIRST2_1}           css=body > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(4) > div:nth-child(1)

${SELECTDROPDOWNINSIDE3}    xpath=//*[@id="app"]/div/div/main/div/div/nav[2]/div/form/div/div[6]/div/div/div/div/div[3]/div
${SELECTFIRST3_1}           css=body > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(4) > div:nth-child(1)

${SUBMIT_BUTTONINSIDE}      xpath=//*[@id="app"]/div/div/main/div/div/nav[2]/div/form/div/div[8]/div/div/div[2]/button

${DELETEMISSION}            xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div[2]/div[2]/button[2]
${CONFIRMDELETE}            xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]
${SPACE}                    xpath=//div[@class='v-list-item v-theme--myCustomLightTheme v-list-item--density-default v-list-item--one-line v-list-item--variant-text mx-10']//span[contains(text(),'สมรรถนะที่สนองตอบผลลัพธ์')]
${SPACE1}                   xpath=//div[@class='v-list-item v-theme--myCustomLightTheme v-list-item--density-default v-list-item--one-line v-list-item--variant-text mx-10']//span[contains(text(),'ส่วนที่หน่วยงานจะได้รับประโยชน์')]


#Deverlop personal tab2
${DEVERLOPPERSONTAB2}               xpath=//button[@value='two']//span[@class='v-btn__content']                                            
${ADDTOPICDEVERLOP}                 xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[5]/button
${SELECTDROPDOWNFIRSTTAB2_1}        xpath=//*[@id="app"]/div/div/main/div/div/nav[4]/div/form/div/div[2]/div/div/div/div/div[3]/div
${SELECTDROPDOWNFIRSTTAB2_1_1}      css=body > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(4) > div:nth-child(1)
${INPUTTEXTTAB2_2}                  xpath=//textarea[@id='Tab2Input4']
${INPUTTEXTTAB2_3}                  xpath=//*[@id="Tab2Input5"]
${INPUTTEXTTAB2_4}                  xpath=//*[@id="Tab2Input6"]
${CLICKCALENDERSTART}               xpath=//*[@id="Tab2Input7"]/div/div/div/div[4]
${SELECTDAYSTART}                   xpath=//*[@data-v-date='2024-07-30']/button
${CLICKCALENDERFINAL}               xpath=//*[@id="Tab2Input8"]/div/div/div/div[4]
${SELECTDAYFINAL}                   xpath=//*[@data-v-date='2024-07-31']/button
${SUBMITINFOTAB2}                   xpath=//*[@id="app"]/div/div/main/div/div/nav[4]/div/form/div/div[11]/div/div/div[2]/button

#Deverlop personal tab3
${DEVERLOPPERSONTAB3}               xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[2]/div/div/button[3]
${EDITRESULT}                       xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[3]/div[1]/div[3]/div[4]/div/div/div[2]/div[6]/button[1]
${TEXTFILLRESULT}                   xpath=//*[@id="Tab3Input2"]
${INPUTFILE}                        xpath=//*[@id="input-99"]
${SUBMIT_RESULTTAB}                 xpath=//*[@id="app"]/div/div/main/div/div/nav[6]/div/form/div/div[8]/div/div/div[2]/button

#feedback
${DEVERLOPPERSONTAB3}               xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[2]/div/div/button[3]
${ADDFEEDBACK}                      xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[3]/div[2]/div[3]/div[4]/div/div/div[2]/div[6]/button[1]
${AREAFEEDBACK}                     xpath=//*[@id="Tab3Input1"]
${SUBMIT_FEEDBACK}                  xpath=//*[@id="app"]/div/div/main/div/div/nav[6]/div/form/div/div[8]/div/div/div[2]/button

#feedback HRBP                              
${ADDFEEDBACK_HRBP}                 xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[4]/div/div[5]/button
${SELECTDROPDOWNFIRST_HRBP}         xpath=//*[@id="app"]/div/div/main/div/div/nav[7]/div/form/div/div[2]/div/div[7]/div/div/div/div/div[3]/div
${SELECTINFIRSTDROPDOWN_HRBP}       xpath=//div[contains(text(),'เป้าหมายที่ 1 : ภารกิจที่ 1: test1')]
${SPACE_HRBP}                       xpath=//*[@id="app"]/div/div/main/div/div/nav[7]/div/form/div/div[2]/div/div[9]/div/span
${SELECTDROPDOWNSECOND_HRBP}        xpath=//*[@id="app"]/div/div/main/div/div/nav[7]/div/form/div/div[2]/div/div[8]/div/div/div/div/div[3]/div
${SELECTINSECONDDROPDOWN_HRBP}      xpath=//div[@class='v-list-item-title']
${SPACE2_HRBP}                      xpath=//*[@id="app"]/div/div/main/div/div/nav[7]/div/form/div/div[2]/div/div[10]/div/span
${AREAFEEDBACK_HRBP}                xpath=//*[@id="Tab4Input3"]
${SUBMIT_FEEDBACK_HRBP}             xpath=//*[@id="app"]/div/div/main/div/div/nav[7]/div/form/div/div[4]/div/div/div[2]/button
${DELATEFEEDBACK_HRBP}              xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[4]/div/div[4]/div/div/div[2]/div/div/div/div[2]/div[4]/button[2]
${CONFIRMDELETE_HRBP}               xpath=/html/body/div[2]/div[2]/div[2]/div/div[4]/div/button[1]

#Verify text tab1(mission2)                 
${NUMBERMISSION}                    xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div/div[2]/div[1]/h2[2]
${NAMEMISSION_VERIFY}               xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div/div[2]/div[1]/h2[3]
${NAMEINMISSION_VERIFY}             xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div/div[4]/div[2]/div/div/div[2]/div[1]
${EXPECTRESULT_VERIFY}              xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div/div[4]/div[2]/div/div/div[2]/div[2]
${SAMUTTANA_VERIFY}                 xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div/div[4]/div[2]/div/div/div[2]/div[3]
${RESOURCERECIVE_VERIFY}            xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[1]/div[1]/div/div[4]/div[2]/div/div/div[2]/div[4]

#Verify text tab2(mission2)         
${NUMBERMISSION2}                    xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[2]/div/h2[2]
${NAMEMISSION_VERIFY2}               xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[2]/div/h2[3]
${NAMEINMISSION_VERIFY2}             xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[2]/div                                            
${SAMUTTANA_VERIFY2}                 xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/div/div/div[2]/div[1]/div[1]/h3
${LEARNINGAPPOINT_VERIFY2}            xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/div/div/div[2]/div[2]
${METHODDEVELOP_VERIFY2}              xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/div/div/div[2]/div[3]
${AGREEMENTDEVELOP_VERIFY2}           xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/div/div/div[2]/div[4]
${EXPENSE_VERIFY2}                   xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/div/div/div[2]/div[5]
${TIME_VERIFY2}                      xpath=//*[@id="app"]/div/div/main/div/div/div[4]/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/div/div/div[2]/div[6]