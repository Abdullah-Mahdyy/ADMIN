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
${Role_Name}                    //*[@id="role_input_roleName"]
${Save_Button}                  //*[@id="role_btn_save"]
${Yes_Button}                   //*[@id="id_btn_saveAddNewRole_ok"]

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
Click on Add Role Button
    Click Element           //*[@id="role_btn_addRole"]/i
    Sleep    2
Insert Random Role Name
    ${Dynamic_Role_Name}           Generate Random String      5       [LETTERS]
    Input Text              ${Role_Name}    ${Dynamic_Role_Name}
    Set Selenium Implicit Wait    5
    [Return]    ${Dynamic_Role_Name}
Click on Save
    Click Button    ${Save_Button}
Click on Yes at the Confirmation Message
    Click Element   ${Yes_Button}
System should Displays the Group Name Successfully
    [Arguments]     ${Dynamic_Role_Name}
    Sleep    3
    Page Should Contain    ${Dynamic_Role_Name}