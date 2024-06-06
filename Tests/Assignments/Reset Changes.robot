*** Settings ***

Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_ResetChanges.robot
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
${Select_all_CheckBox}          //*[@id="role_checkbox_selectAllFunctions"]/label/div
${Toggle_Button}                //*[@id="role_toggle_mapServicesList_0"]/label/div/div/div[1]
${Reset_Button}                 //*[@id="role_btn_resetFunctions"]
${StoryMap-CheckBox}            //*[@id="mat-checkbox-2"]/label
${Dashboard_CheckBox}           //*[@id="mat-checkbox-4"]/label
${Yes_Button}                   //*[@id="id_btn_resetFunctions_ok"]
*** Test cases ***
Check functionality of Reset Button
    [Tags]          Rsest_button
    Click on Assignments Button
    Click On Requester Button
    Click On UMA-Inspection Button
    Click on UMA_Inspetion1 Button
    Click on Internal_UMA_Inspection1 Button
    Click on Edit Role Button
    Click on Geospatial_Model_Button
    Check if Reset Button is Visable
    Check the Select all Checkbox
    Check the StoryMap Checkbox
    Click on Reset Button
    Click on Yes Button
    Check that CheckBox is Reseted

















