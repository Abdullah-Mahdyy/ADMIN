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
${Select_all_CheckBox}          //*[@id="role_checkbox_selectAllFunctions"]/label/div
${Toggle_Button}                //*[@id="role_toggle_mapServicesList_0"]/label/div/div/div[1]
${Reset_Button}                 //*[@id="role_btn_resetFunctions"]
${StoryMap-CheckBox}            //*[@id="mat-checkbox-2"]/label
${Dashboard_CheckBox}           //*[@id="mat-checkbox-4"]/label
${saveUpdateRole_Button}              //*[@id="role_btn_save"]
${saveUpdateRole_ok}               //*[@id="id_btn_saveUpdateRole_ok"]
${SaveConfirmationMsg}              //*[@id="toast-container"]/div

*** Keywords ***
Click on Assignments Button
         Click Button    ${Assginment_Button}
         Sleep    4s
Click On Requester Button
         Click Element    ${Requester_Button}
         Sleep    4s
Click On UMA-Inspection Button
         Click Button    ${Inspection_Button}
         Sleep    4s
Click on UMA_Inspetion1 Button
         Click Button    ${Inspection1_button}
         Sleep    5s
Click on Internal_UMA_Inspection1 Button
         Click Button    ${Inspection1_button1}
         Sleep    4s
Click on Edit Role Button
         Click Element    ${role_btn_editRole}
         Sleep    3s
Click on Geospatial_Model_Button
         Click Element    ${Geo_button}
         Sleep    3s
Check the Select all Checkbox
         Click Element    ${Select_all_CheckBox}
         Sleep    3s
Check the StoryMap Checkbox
         Click Element    ${StoryMap-CheckBox}
Check if CheckBox is Checked
         ${status}=    Get Element Attribute     ${Dashboard_CheckBox}      checked
         Log      ${status}
         Run Keyword If    "${status}" != "true"     Log    "ResetButton Working successfully "    ELSE    Fail    "Reset Button Not working"

Click on Save Button
         Click Button    ${saveUpdateRole_Button}
Click on Ok
         Click Element    ${saveUpdateRole_ok}
Verify if it saved
         Page Should Contain Element    ${SaveConfirmationMsg}



