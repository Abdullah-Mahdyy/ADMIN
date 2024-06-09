 robot  -d   Results   -i   Toggle_button_Data   Tests
###################### Command #############################
*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_Toggle off and on Data.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

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

*** Test cases ***
Check functionality of Toggle_button
    [Tags]          Toggle_button_Data
    Click on Assignments Button
    Click On Requester Button
    Click on Specific Group
    Click on Specific Role
    Click on Edit Button
    Click on Data Button
    Re-Click on Data Button
    Check Toggle Button Status              ${Toggle1_Input}
    Check If Toggle is UnChecked            ${Toggle1_Input}
    Verify that All Toggles is Checked      ${Toggle1_Input1}
    Verify that the main Toggle state is equal for all Toggles state