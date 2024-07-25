*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Developperson.robot

*** Variables ***
${USERNAME}            64070507212
${PASSWORD}            password
${test1}               test1
${MYURL}               http://10.35.29.184/development/64070507212
${TEXTTEST1}           1
${TEXTTEST2}           เพื่อให้ทำงานได้ตาม Job Description
${TEXTTEST3}           test1
${TEXTTEST4}           สามารถพัฒนาทักษะและความรู้ที่จำเป็นสำหรับตำแหน่งที่สูงขึ้น แสดงผลงานที่โดดเด่น บรรลุเป้าหมายที่ท้าทาย สร้างความประทับใจให้กับหัวหน้างาน เตรียมพร้อมสำหรับบทบาทความรับผิดชอบที่มากขึ้น
${TEXTTEST5}           T-001 ความรู้เกี่ยวกับโรงงานอัจฉริยะ(Smart Factory)
${TEXTTEST6}           มีระบบการจัดการปัญหาต่างๆ มาช่วยปรับปรุง และช่วยสนับสนุนในหน่วยงาน




*** Test Cases ***
Successful Login
    Login to Application    ${USERNAME}    ${PASSWORD}
    Select And Submit Role  

Add mission Personal
    Select Mission Personal
    Select More In Mission  ${test1}

Verify text
    # Login to Application    ${USERNAME}    ${PASSWORD}
    # Select And Submit Role  
    Verify Text In Tab1     ${TEXTTEST1}   ${TEXTTEST2}   ${TEXTTEST3}  ${TEXTTEST4}  ${TEXTTEST5}  ${TEXTTEST6}