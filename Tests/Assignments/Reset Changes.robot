*** Settings ***

Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome
Test Teardown   Close_Chrome

*** Variables ***

${Assginment_Button}             //*[@id="4"]
${Requester_Button}             //*[@id="application_ddl_applications8"]/label
${Inspection_Button}            //*[@id="group_ddl_groups0"]/button
${Inspection1_button}           //*[@id="role_ddl_roleroleList_0"]/button
${role_btn_editRole}            //*[@id="role_btn_editRole"]
${Toggle_button}                //*[@id="role_toggle_mapServicesList_1-input"]
*** Test cases ***
Check functionality of Reset Button
    [Tags]          Rsest_button
    Click Button    ${Assginment_Button}
    Click Button    ${Requester_Button}
    Click Button    ${Inspection_Button}
    Click Button    ${Inspection1_button}
    Sleep    2s
    Click Button    ${role_btn_editRole}
    Click Button    ${Toggle_button}
    Sleep    2s






