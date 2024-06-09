*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot

*** Variables ***
${UnCheck_btn_Retired}         //*[@id="users_btn_Retired"]/label
${Recheck_btn_Retired}         //*[@id="users_btn_Retired"]/label
${Users_btn_menu}           //*[@id="users_btn_menu"]

*** Keywords ***
Click on the User Managment Button
    Click Element    ${Users_Mangment_Button}
    Sleep    5
Click on the User Menu Button
    Click Element           ${Users_btn_menu}
Check View Of Retired Checkbox Is Present
    Element Should Be Visible        ${UnCheck_btn_Retired}
Check initial state of the Retired_checkbox
        ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Retired}     checked
        Run Keyword If    ${is_checked} == None    Log    "Checkbox is initially checked"    ELSE    Log    "Checkbox is initially unchecked"
     # If initially checked, uncheck it and verify
        Run Keyword If    ${is_checked} == None    Click Element    ${UnCheck_btn_Retired}
        Sleep    3s
        Click Element    ${Users_btn_menu}
        ${is_checked}=    Get Element Attribute    ${Recheck_btn_Retired}    checked
        Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"
        Sleep    1s
Verify the Retired_checkbox is now checked
         Click Element    ${Recheck_btn_Retired}
        ${is_checked}=    Get Element Attribute    ${Recheck_btn_Retired}   checked
        Run Keyword If    ${is_checked} == None    Log    "Checkbox is now checked "    ELSE    Fail    "Checkbox should be checked "
        Sleep    1s
Check the Retired_checkbox for the final state
       Click Element           ${Users_btn_menu}
       Click Element           ${UnCheck_btn_Retired}
Verify the Retired_checkbox is now unchecked again
       ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Retired}     checked
        Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"
