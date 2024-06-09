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
${Specific_Role}                //*[@id="role_ddl_roleroleList_0"]/button
${Delete_Button}                //*[@id="role_btn_deleteRole"]/button[1]
${Yes_Button}                   //*[@id="id_btn_deleteRole_ok"]

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
Click on Delete Button
    Click Element   ${Delete_Button}
Click on Yes at the Confirmation Message
    Click Element   ${Yes_Button}