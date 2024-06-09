*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot

*** Variables ***
${Assginment_Button}             //*[@id="4"]
${Requester_Button}             //*[@id="application_ddl_applications8"]
${Inspection_Button}            //*[@id="group_ddl_groups0"]/button
${Inspection1_button}           //*[@id="role_ddl_roleroleList_0"]/button
${Inspection1_button1}          //*[@id="role_ddl_roleroleList_0"]/button
${role_btn_editRole}            //*[@id="role_btn_editRole"]
${Geo_button}                   //*[@id="role_ddl_mapServicesList_0"]/button
${Select_all_CheckBox}           //*[@id="role_checkbox_selectAllFunctions"]/label/div
${Reset_Button}                 //*[@id="role_btn_resetFunctions"]
${StoryMap-CheckBox}            //*[@id="mat-checkbox-2"]/label
${Dashboard_CheckBox}           //*[@id="mat-checkbox-4"]/label
${Yes_Button}                   //*[@id="id_btn_resetFunctions_ok"]
${Toggle1_Input}                 //*[@id="role_toggle_mapServicesList_0-input"]
${Toggle1_Checked}              //*[@id="role_toggle_mapServicesList_0"]/label/div/div/div[1]

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
    Sleep    4
Click on Specific Role
    Click Element   ${Inspection1_button}
    Sleep    4
Click on Other Specific Role
    Click Button    ${Inspection1_button1}
    Sleep    4
Click on Edit Button
    Click Element   ${role_btn_editRole}
    Sleep    4
Toggle on the Geospatial Interactive Services
    Click Element    ${Geo_button}
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
Verify Select All Checkbox Status
    ${status}=    Run Keyword And Ignore Error    Get Element Attribute    ${Select_all_CheckBox}    checked
    Run Keyword If    "${status}" != "None"    Log    "Select All checkbox is checked"    ELSE    Fail    "Select All checkbox is not checked"
