*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome


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



*** Test cases ***

User Test Case
    [tags]         Login
    Set Selenium Implicit Wait    5
    Open Browser         ${URL}     ${BROWSER}
    Maximize Browser Window
    Input Text         ${USERNAME_FIELD}    ${USERNAME}
    Input Password     ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button       ${LOGIN_BUTTON}
#check Functionality of Retired Checkbox
    Click Element    ${Users_Mangment_Button}
    Sleep    5
    Click Element           ${Users_btn_menu}
#Check Retired Checkbox Is Present
    Element Should Be Visible        ${UnCheck_CHECKBOX}


#Get the initial state of the checkbox
   ${is_checked}=    Get Element Attribute    ${UnCheck_CHECKBOX}     checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is initially checked"    ELSE    Log    "Checkbox is initially unchecked"

# If initially checked, uncheck it and verify
   Run Keyword If    ${is_checked} == None    Click Element    ${UnCheck_CHECKBOX}
   Sleep    3s
   Click Element    ${Users_btn_menu}
   ${is_checked}=    Get Element Attribute    ${Recheck_CHECKBOX}    checked
   Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"
    Sleep    1s

#Verify the checkbox is now checked
    Click Element    ${Recheck_CHECKBOX}
    ${is_checked}=    Get Element Attribute    ${Recheck_CHECKBOX}   checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now checked "    ELSE    Fail    "Checkbox should be checked "
    Sleep    1s
#  check the checkbox for the final state
   # Sleep    3s
   Click Element           ${Users_btn_menu}
   Click Element           ${UnCheck_CHECKBOX}

# Verify the checkbox is now unchecked again
    ${is_checked}=    Get Element Attribute    ${UnCheck_CHECKBOX}     checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"



     Close Browser
