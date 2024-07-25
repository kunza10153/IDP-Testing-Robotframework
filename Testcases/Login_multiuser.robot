*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Loginkeyword.robot


*** Test Cases ***
Successful Login multiuser
    [Template]    Login to Application
    64070507212    password    
    sanan.sra      password    
    thidakan.cha   password    
