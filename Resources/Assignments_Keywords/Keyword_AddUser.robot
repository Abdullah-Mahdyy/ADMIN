*** Settings ***

Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot

*** Variables ***
${Assginment_Button}            //*[@id="4"]
${Requester_Button}             //*[@id="application_ddl_applications8"]/label
${Specific_Group}               //*[@id="group_ddl_groups5"]/button
${Add_Role_Button}              //*[@id="role_btn_addRole"]/i
${Specific_Role}                //*[@id="role_ddl_roleroleList_0"]/button
${Edit_Button}                  //*[@id="role_btn_editRole"]
${User_Button}                  //*[@id="mat-tab-label-0-2"]
${Search_TextBox}               //*[@id="role_ddl_searchUsers"]/div/div[1]/span
${Specifc_Role}                 //*[@id="role_ddl_Users_0"]/mat-pseudo-checkbox
${Add_User_Button}              //*[@id="role_btn_addUsers"]/i
${Save_Button}                  //*[@id="role_btn_save"]
${Yes_Button}                   //*[@id="id_btn_saveUpdateRole_ok"]

*** Keywords ***
Click on Assignments Button
    Click Button    ${Assginment_Button}
    Sleep    2
Click On Requester Button
    Click Element    ${Requester_Button}
    Sleep    2
Click on Specific Group
    Click Element   ${Specific_Group}
    Sleep    2
Click on Specific Role
    Click Element   ${Specific_Role}
    Sleep    5
Click on Edit Button
    Click Element   ${Edit_Button}
    Sleep    4
Click on User Button
    Click Element   ${User_Button}
    Sleep    2
Re-Click on User Button
    Double Click Element    ${User_Button}
    Sleep    2
Click on Search Text Box
    Click Element    ${Search_TextBox}
    Sleep    2
Select Specifc Role
    Click Element    ${Specifc_Role}
    Sleep    2
Click on User Button again
    Double Click Element    ${User_Button}
    Sleep    3
Click on Add User Button
    Click Element   ${Add_User_Button}
    Sleep    2
Click on Save
    Click Button    ${Save_Button}
    Sleep    2
Click on Yes at the Confirmation Message
    Click Element   ${Yes_Button}
    Sleep    2