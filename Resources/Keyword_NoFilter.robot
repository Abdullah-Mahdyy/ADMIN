*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../Resources/Common.robot

*** Variables ***

${Users_Mangment_Button}     //*[@id="1"]
${Users_btn_menu}           //*[@id="users_btn_menu"]

*** Keywords ***
Click on the User Managment Button
    Click Element    ${Users_Mangment_Button}
    Sleep    5
Click on the User Menu Button
    Click Element           ${Users_btn_menu}
    Sleep    2