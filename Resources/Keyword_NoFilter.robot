*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../Resources/Common.robot

*** Variables ***
${Users_Mangment_Button}         //*[@id="1"]
${Users_btn_menu}                //*[@id="users_btn_menu"]
${UnCheck_btn_Unretired}         //*[@id="users_btn_Unretired"]
${Recheck_btn_Unretired}         //*[@id="users_btn_Unretired"]/label/div
${UnCheck_btn_Retired}           //*[@id="users_btn_Retired"]/label
${Recheck_btn_Retired}           //*[@id="users_btn_Retired"]/label
${Verify_No_Result_Found}        //*[@id="users_p_noResult"]

*** Keywords ***
Click on the User Managment Button
    Click Element    ${Users_Mangment_Button}
    Sleep    12
Click on the User Menu Button
    Click Element           ${Users_btn_menu}
    Sleep    8
Check Retired Checkbox Is Present
    Element Should Be Visible        ${UnCheck_btn_Retired}
Check the State and Uncheck it If the Checkbox is Checked
   ${is_checked1}=    Get Element Attribute    ${UnCheck_btn_Retired}     checked
    Run Keyword If    ${is_checked1} == None    Log    "Checkbox is initially checked"    ELSE    Fail     "Checkbox is initially unchecked"
    Run Keyword If    ${is_checked1} == None    Click Element    ${UnCheck_btn_Retired}
    Click Element    ${Users_btn_menu}
    ${is_checked1}=    Get Element Attribute    ${Recheck_btn_Retired}    checked
    Run Keyword If    ${is_checked1} == None    Log    "Checkbox is now unchecked"          ELSE    Fail    "Checkbox should be unchecked"
    Sleep    8
Check Unretired Checkbox Is Present
    Element Should Be Visible        ${UnCheck_btn_Unretired}
Check the State and Check it If the Checkbox is Unchecked
    ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Unretired}     checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is initially checked"    ELSE    Log  "Checkbox is initially unchecked"
    Run Keyword If    ${is_checked} == None    Click Element    ${UnCheck_btn_Unretired}
    Sleep    8
    Click Element    ${Users_btn_menu}
    ${is_checked}=    Get Element Attribute    ${Recheck_btn_Unretired}    checked
    Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"

Check If the Button Retuired is Checked
    ${is_checked1}=    Get Element Attribute    ${UnCheck_btn_Retired}     checked
    Sleep    8
    ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Unretired}     checked
    Sleep    7
    IF    ${is_checked} == ${is_checked1}
    Page Should Contain Element    ${Verify_No_Result_Found}
    ELSE
    Log To Console    "Theres a Bug"

    END