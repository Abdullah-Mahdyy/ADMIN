*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome


*** Variables ***
${UnCheck_btn_Unretired}         //*[@id="users_btn_Unretired"]
${Recheck_btn_Unretired}         //*[@id="users_btn_Unretired"]/label/div

*** Test cases ***

Check Functionality of Retired Test Case
    [tags]              Retired_user

#check Functionality of Retired Checkbox
    Click Element    ${Users_Mangment_Button}
    Sleep    5
    Click Element           ${Users_btn_menu}
#Check Retired Checkbox Is Present
    Element Should Be Visible        ${UnCheck_btn_Unretired}


#Get the initial state of the checkbox
   ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Unretired}     checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is initially checked"    ELSE    Log    "Checkbox is initially unchecked"

# If initially checked, uncheck it and verify
   Run Keyword If    ${is_checked} == None    Click Element    ${UnCheck_btn_Unretired}
   Sleep    3s
   Click Element    ${Users_btn_menu}
   ${is_checked}=    Get Element Attribute    ${Recheck_btn_Unretired}    checked
   Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"
    Sleep    1s

#Verify the checkbox is now unchecked
    Click Element    ${Recheck_btn_Unretired}
    ${is_checked}=    Get Element Attribute    ${Recheck_btn_Unretired}   checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked "    ELSE    Fail    "Checkbox should be unchecked "
    Sleep    1s
#  check the checkbox for the final state
   # Sleep    3s
   Click Element           ${Users_btn_menu}
   Click Element           ${UnCheck_btn_Unretired}

# Verify the checkbox is now checked again
    ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Unretired}     checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now checked"    ELSE    Fail    "Checkbox should be checked"

