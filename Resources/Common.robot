*** Settings ***
Library  SeleniumLibrary
Library  String
*** Variables ***
${Username_Text}    //*[@id="login_input_username"]
${Password_Text}    //*[@id="login_input_password"]
${Login_btn}        //*[@id="login_btn_login"]
${Users_Mangment_Button}     //*[@id="1"]
${Users_btn_menu}           //*[@id="users_btn_menu"]
*** Keywords ***
Open_Chrome
    Set Selenium Implicit Wait  5
    Open Browser    https://dgdadevnew.eastus.cloudapp.azure.com/DGDAAdminFront/#/login  chrome
    Maximize Browser Window
Close_Chrome
    Close Browser
Login_Successfully
    Input Text      ${Username_Text}    Admin
    Input Password  ${Password_Text}    123456
    Click Element   ${Login_btn}