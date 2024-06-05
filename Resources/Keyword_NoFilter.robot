*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../Resources/Common.robot

*** Variables ***
${URL}                https://dgdadevnew.eastus.cloudapp.azure.com/DGDAAdminFront/#/login
${BROWSER}            Chrome
${USERNAME}           admin
${PASSWORD}           123456
${LOGIN_BUTTON}       //*[@id="login_btn_login"]
${USERNAME_FIELD}     //*[@id="login_input_username"]
${PASSWORD_FIELD}     //*[@id="login_input_password"]
${Users_Mangment_Button}     //*[@id="1"]
${Users_btn_menu}           //*[@id="users_btn_menu"]
${UnCheck_CHECKBOX}         //*[@id="users_btn_Unretired"]
${Recheck_CHECKBOX}         //*[@id="users_btn_Unretired"]/label/div
${UnCheck_CHECKBOX1}         //*[@id="users_btn_Retired"]/label
${Recheck_CHECKBOX1}         //*[@id="users_btn_Retired"]/label

*** Keywords ***
Click on the User Managment Button
    Click Element    ${Users_Mangment_Button}
    Sleep    5
Click on the User Menu Button
    Click Element           ${Users_btn_menu}
    Sleep    2