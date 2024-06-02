*** Settings ***

Library     SeleniumLibrary
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
${Select_all_CheckBox}          //*[@id="role_checkbox_selectAllFunctions"]/label/div
${Toggle_Button}                //*[@id="role_toggle_mapServicesList_0"]/label/div/div/div[1]
${Reset_Button}                 //*[@id="role_btn_resetFunctions"]
${StoryMap-CheckBox}            //*[@id="mat-checkbox-2"]/label
${Dashboard_CheckBox}           //*[@id="mat-checkbox-4"]/label
${Cancel_Button}                   //*[@id="id_btn_resetFunctions_cancel"]
*** Test cases ***
Check functionality of Reset Button
    [Tags]          Rsest_button
    Click Button    ${Assginment_Button}
    Sleep    4s
    Click Element    ${Requester_Button}
    Sleep    4s
    Click Button    ${Inspection_Button}
    Sleep    4s
    Click Button    ${Inspection1_button}
    Sleep    4s
     Click Button    ${Inspection1_button1}
    Sleep    4s
    Click Element    ${role_btn_editRole}
    Sleep    3s
    Click Element    ${Geo_button}
    Sleep    3s

    Click Element    ${Select_all_CheckBox}
    Sleep    3s
    Click Element    ${StoryMap-CheckBox}


    Click Element    ${Reset_Button}
    Click Element    ${Cancel_Button}
    Sleep    2s
    ${status}=    Get Element Attribute     ${Dashboard_CheckBox}    checked
          Log      ${status}


#if Status = True its checked
    Run Keyword If    "${status}" != "true"     Log    "ResetButton Working successfully "    ELSE    Fail    "Reset Button Not working""







