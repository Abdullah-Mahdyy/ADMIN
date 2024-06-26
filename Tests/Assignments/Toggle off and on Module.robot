 robot  -d   Results   -i   Toggle_button_Module   Tests
###################### Command #############################
*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_Toggle off and on Module.robot
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

*** Test cases ***
Check Functionality of Toggle button
    [Tags]          Toggle_button_Module
    Click on Assignments Button
    Click On Requester Button
    Click on Specific Group
    Click on Specific Role
    Click on Other Specific Role
    Click on Edit Button
    Toggle on the Geospatial Interactive Services
    Check Toggle Button Status      ${Toggle1_Input}
    Check If Toggle is UnChecked    ${Toggle1_Input}
    Verify Select All Checkbox Status

#    ${toggle_status}=    Check Toggle Button Status    ${Toggle1_Input}
#       Run Keyword If    "${toggle_status}" == "false"    Click Element    ${Toggle1_Checked}
#       Sleep    1s
#    ##Verify the toggle button is checked
#     ${toggle_status}=    Check Toggle Button Status    ${Toggle1_Input}
#       Run Keyword If    "${toggle_status}" == "true"    Log    "Toggle button is checked"

       ##Verify the status of the 'Select All' checkbox
#       Verify Select All Checkbox Status
    ##Checkbox Should Be Selected    ${Select_all_CheckBox}














