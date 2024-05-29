*** Settings ***
Library     SeleniumLibrary



*** Variables ***




*** Test cases ***

Check_Retired_User Test Case
    [tags]              RetiredUser
    [Documentation]    check if the UserRetired checked
    Open Browser        https://dgdadevnew.eastus.cloudapp.azure.com/DGDAAdminFront/#/login      Chrome
    Maximize Browser Window
#Login
    Input Text        //*[@id="login_input_username"]    admin
    Input Password    //*[@id="login_input_password"]    123456
    Click Button      //*[@id="login_btn_login"]
#check Functionality of Retired Checkbox


       Close Browser
