*** Settings ***

Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String


Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome

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



Check Toggle Button Status
  [Arguments]    ${Toggle1_Input}
     ${status}=    Get Element Attribute    ${Toggle1_Input}   aria-checked
     Log    ${status}
     [Return]    ${status}


check If UnChecked
  [Arguments]    ${Toggle1_Input}
    ${status}=    Check Toggle Button Status    ${Toggle1_Input}
    Run Keyword If    "${status}" == "false"    Click Element    ${Toggle1_Checked}

Verify Select All Checkbox Status
    ${status}=    Run Keyword And Ignore Error    Get Element Attribute    ${Select_all_CheckBox}    checked
    Run Keyword If    "${status}" != "None"    Log    "Select All checkbox is checked"    ELSE    Fail    "Select All checkbox is not checked"

*** Test cases ***

Check functionality of Toggle_button
    [Tags]          Toggle_button
    Click Button    ${Assginment_Button}
    Sleep    4s
    Click Element    ${Requester_Button}
    Sleep    4s
    Click Button    ${Inspection_Button}
    Sleep    4s
    Click Button    ${Inspection1_button}
    Sleep    5s
    Click Button    ${Inspection1_button1}
    Sleep    4s
    Click Element    ${role_btn_editRole}
    Sleep    3s
    Click Element    ${Geo_button}
    Sleep    3s

#    # Check and toggle it

    ${toggle_status}=    Check Toggle Button Status    ${Toggle1_Input}
       Run Keyword If    "${toggle_status}" == "false"    Click Element    ${Toggle1_Checked}
       Sleep    1s
    Sleep    1s

    # Verify the toggle button is checked
     ${toggle_status}=    Check Toggle Button Status    ${Toggle1_Input}
         Run Keyword If    "${toggle_status}" == "true"    Log    "Toggle button is checked"

       # Verify the status of the 'Select All' checkbox
       Verify Select All Checkbox Status
    #Checkbox Should Be Selected    ${Select_all_CheckBox}














