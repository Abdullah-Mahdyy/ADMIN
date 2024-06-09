*** Settings ***

Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_SaveEdit.robot
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
${saveUpdateRole_Button}              //*[@id="role_btn_save"]
${saveUpdateRole_ok}               //*[@id="id_btn_saveUpdateRole_ok"]
${SaveConfirmationMsg}              //*[@id="toast-container"]/div
*** Test cases ***
Check Functionality of Save Edit button
    [Tags]          Save_Edit_button

       Click on Assignments Button
       Click On Requester Button
       Click On UMA-Inspection Button
       Click on UMA_Inspetion1 Button
       Click on Internal_UMA_Inspection1 Button
       Click on Edit Role Button
       Click on Geospatial_Model_Button
       Check the Select all Checkbox
       Check the StoryMap Checkbox
       Check if CheckBox is Checked
       Click on Save Button
       Click on Ok
       Verify if it saved











