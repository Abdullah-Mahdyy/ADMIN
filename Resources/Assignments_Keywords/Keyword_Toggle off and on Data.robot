*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot

*** Variables ***
${Assginment_Button}            //*[@id="4"]
${Requester_Button}             //*[@id="application_ddl_applications8"]
${Inspection_Button}            //*[@id="group_ddl_groups0"]/button
${Inspection1_button}           //*[@id="role_ddl_roleroleList_0"]/button
${Inspection1_button1}          //*[@id="role_ddl_roleroleList_0"]/button
${Edit_Button}                  //*[@id="role_btn_editRole"]
${First_CLlick_Data}            //*[@id="mat-tab-label-0-1"]
${Double_CLlick_Data}           //*[@id="mat-tab-label-0-1"]
${Select_all_Toggles}           //*[@id="role_checkbox_selectAllMap"]/label/div/div
${Toggle1_Input}                //*[@id="role_checkbox_selectAllMap-input"]
${Toggle1_Checked}              //*[@id="role_toggle_mapServicesList_0"]/label/div/div/div[1]
${Toggle1_Input1}               //*[@id="role_toggle_mapServicesList_0-input"]

*** Keywords ***
Click on Assignments Button
    Set Selenium Implicit Wait  5
    Click Button    ${Assginment_Button}
    Sleep    2s
Click On Requester Button
    Click Element    ${Requester_Button}
    Sleep    2
Click on Specific Group
    Click Element   ${Inspection_Button}
    Sleep    2
Click on Specific Role
    Click Element   ${Inspection1_button}
    Sleep    4
Click on Edit Button
    Click Element   ${Edit_Button}
    Sleep    4
Click on Data Button
    Click Element   ${First_CLlick_Data}
Re-Click on Data Button
    Double Click Element    ${Double_CLlick_Data}
    Sleep    4
Check Toggle Button Status
  [Arguments]    ${Toggle1_Input}
     ${status}=    Get Element Attribute    ${Toggle1_Input}   aria-checked
     Log    ${status}
     [Return]    ${status}
Check If Toggle is UnChecked
  [Arguments]    ${Toggle1_Input}
    ${status}=    Check Toggle Button Status    ${Toggle1_Input}
    Run Keyword If    "${status}" == "false"    Click Element    ${Toggle1_Checked}
Verify that All Toggles is Checked
    [Arguments]    ${Toggle1_Input1}
    ${status1}=    Get Element Attribute    ${Toggle1_Input1}   aria-checked
    Log    ${status1}
    [Return]    ${status1}
Verify that the main Toggle state is equal for all Toggles state
    ${toggle_status}=    Check Toggle Button Status    ${Toggle1_Input}
       Run Keyword If    "${toggle_status}" == "false"    Click Element    ${Toggle1_Checked}
    ${toggle_status1}=    Check Toggle Button Status    ${Toggle1_Input}
       Run Keyword If    "${toggle_status}" == "true"    Log    "Toggle button is checked"
    ${toggle_status2}=    Verify that All Toggles is Checked     ${Toggle1_Input1}
       Run Keyword If    "${toggle_status}" == "true"    Log    "All Toggle button is checked"

    Run Keyword If   "${toggle_status1}" == "${toggle_status2}"
    ...    Log    "Run Successfully"
    ...  ELSE
    ...    Log    "Error"