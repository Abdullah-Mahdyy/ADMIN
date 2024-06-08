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
${role_btn_editRole}            //*[@id="role_btn_editRole"]
${Geo_button}                   //*[@id="role_ddl_mapServicesList_0"]/button
${Select_all_CheckBox}          //*[@id="role_checkbox_selectAllFunctions"]/label/div
${Toggle_Button}                //*[@id="role_toggle_mapServicesList_0"]/label/div/div/div[1]
${Reset_Button}                 //*[@id="role_btn_resetFunctions"]
${StoryMap-CheckBox}            //*[@id="mat-checkbox-2"]/label
${Dashboard_CheckBox}           //*[@id="mat-checkbox-4"]/label
${CancelEdit_Button}            //*[@id="role_btn_cancel"]
${Confirm_cancel}               //*[@id="id_btn_cancelEditRole_ok"]

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
    Sleep    2
Click on Other Specific Role
    Click Button    ${Inspection1_button1}
    Sleep    4
Click on Edit Button
    Click Element   ${role_btn_editRole}
    Sleep    4
Toggle on the Geospatial Interactive Services
    Click Element    ${Geo_button}
    Sleep    2
Check the Reset Button
    ${status1}=    Get Element Attribute    ${Reset_Button}    disabled
    Run Keyword If    "${status1}" == "true"    Log    "Reset button is disabled"    ELSE    Log    "Reset button is not disabled"    AND    Fail    "Reset button should be disabled"
    Click Element    ${Select_all_CheckBox}
    Sleep    3s
    Click Element    ${StoryMap-CheckBox}
Check the Status of Reset Button
    ${status}=    Get Element Attribute     ${Dashboard_CheckBox}      checked
    Log      ${status}
    Run Keyword If    "${status}" != "true"     Log    "ResetButton Working successfully "    ELSE    Fail    "Reset Button Not working""
Click on Cancel Button
    Click Button    ${CancelEdit_Button}
    Click Element    ${Confirm_cancel}