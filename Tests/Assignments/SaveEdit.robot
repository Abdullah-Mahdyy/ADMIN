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
${saveUpdateRole_Button}              //*[@id="role_btn_save"]
${saveUpdateRole_ok}               //*[@id="id_btn_saveUpdateRole_ok"]
${SaveConfirmationMsg}              //*[@id="toast-container"]/div
*** Test cases ***
Check functionality of Cancel_Edit_button
    [Tags]          Cancel_Edit_button
    Set Selenium Implicit Wait  5
    Click Button    ${Assginment_Button}
    Sleep    4s
    Click Element    ${Requester_Button}
    Sleep    4s
    Click Button    ${Inspection_Button}
    Sleep    4s
    Click Button    ${Inspection1_button}
    Sleep    10s
    Click Button    ${Inspection1_button1}
    Sleep    4s
    Click Element    ${role_btn_editRole}
    Sleep    3s
    Click Element    ${Geo_button}
    Sleep    3s

    #Check Functionality of Reset Button is Enabled
     ${status1}=    Get Element Attribute    ${Reset_Button}    disabled
        Run Keyword If    "${status1}" == "true"    Log    "Reset button is disabled"    ELSE    Log    "Reset button is not disabled"    AND    Fail    "Reset button should be disabled"

     Click Element    ${Select_all_CheckBox}
     Sleep    3s
     Click Element    ${StoryMap-CheckBox}

    #if Status = True its checked
     ${status}=    Get Element Attribute     ${Dashboard_CheckBox}      checked
              Log      ${status}
    Run Keyword If    "${status}" != "true"     Log    "ResetButton Working successfully "    ELSE    Fail    "Reset Button Not working""

    #Check Functionality of Cancel Edit Button
    Click Button    ${saveUpdateRole_Button}
    Click Element    ${saveUpdateRole_ok}
    Page Should Contain Element    ${SaveConfirmationMsg}




