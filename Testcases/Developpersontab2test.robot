*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Developpersontab2.robot

*** Variables ***
${USERNAME}            64070507212
${PASSWORD}            password
${test1}               สองหนึ่วสองสองสองสี่
${test2}               สี่หนึ่งสี่สี่สองแปด 
${test3}               แปดหนึ่งแปดแปดสองสิบหก
${test4}               9999

${TEXTTEST1}           1
${TEXTTEST2}           เพื่อให้ทำงานได้ตาม Job Description
${TEXTTEST3}           ภารกิจที่ 1 : test1
${TEXTTEST4}           การสร้าง Product Mindset (by KMUTT4life)
${TEXTTEST5}           แสดงออกถึงหลักคิดแนวทางทำงานก่อนเริ่มโครงการอย่างมีระบบขั้นตอน ป้องกันความเสียหายที่อาจเกิดขึ้น
${TEXTTEST6}           เรียนรู้ด้วยตนเอง : การฝึกฝน หรือปฏิบัติด้วยตนเองจากช่องทางการเรียนรู้ต่างๆ เช่น การอ่านหนังสือ การค้นคว้าผ่าน Internet หรือ e-Learning
${TEXTTEST7}           แปดหนึ่งแปดแปดสองสิบหก
${TEXTTEST8}           9,999 บาท
${TEXTTEST9}           30 ก.ค. 2567 - 31 ก.ค. 2567


*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role  

Add Topic Develop Tab2
    Select Add Topic Develop    ${test2}    ${test3}    ${test4} 

Verify Text tab2
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role  
    Verify Text In Tab2     ${TEXTTEST1}   ${TEXTTEST2}   ${TEXTTEST3}  ${TEXTTEST4}  ${TEXTTEST5}  ${TEXTTEST6}  ${TEXTTEST7}  ${TEXTTEST8}  ${TEXTTEST9}     