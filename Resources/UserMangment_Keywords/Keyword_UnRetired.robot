*** Settings ***

Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot


*** Variables ***

${UnCheck_btn_Unretired}         //*[@id="users_btn_Unretired"]
${Recheck_btn_Unretired}         //*[@id="users_btn_Unretired"]/label/div
*** Keywords ***

Click on the User Managment Button
    Click Element    ${Users_Mangment_Button}
    Sleep    5
Click on the User Menu Button
    Click Element           ${Users_btn_menu}
Check View Of UnRetired Checkbox Is Present
    Element Should Be Visible        ${UnCheck_btn_Unretired}
Check initial state of the UnRetired_checkbox
    ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Unretired}     checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is initially checked"    ELSE    Log    "Checkbox is initially unchecked"
# If initially checked, uncheck it and verify
    Run Keyword If    ${is_checked} == None    Click Element    ${UnCheck_btn_Unretired}
    Sleep    3s
    Click Element    ${Users_btn_menu}
    ${is_checked}=    Get Element Attribute    ${Recheck_btn_Unretired}    checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"
    Sleep    1s
Verify the UnRetired_checkbox is now checked
    Click Element    ${Recheck_btn_Unretired}
    ${is_checked}=    Get Element Attribute    ${Recheck_btn_Unretired}   checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked "    ELSE    Fail    "Checkbox should be unchecked "
    Sleep    1s
Check the UnRetired_checkbox for the final state
    Click Element           ${Users_btn_menu}
    Click Element           ${UnCheck_btn_Unretired}
Verify the UnRetired_checkbox is now unchecked again
    ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Unretired}     checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now checked"    ELSE    Fail    "Checkbox should be checked"


