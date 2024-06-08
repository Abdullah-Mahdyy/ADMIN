*** Settings ***

Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot

*** Variables ***
${Assginment_Button}            //*[@id="4"]
${Requester_Button}             //*[@id="application_ddl_applications8"]
${Add_Group_Button}             //*[@id="group_btn_add"]
${Group_Name}                   //*[@id="group_input_groupName"]
${Save_Button}                  //*[@id="group_btn_save"]
${Yes_Button}                   //*[@id="id_btn_save_ok"]

*** Keywords ***
Click on Assignments Button
    Sleep    2
    Click Button    ${Assginment_Button}
    Sleep    2
Click On Requester Button
    Click Element    ${Requester_Button}
    Sleep    2
Click on Add Group Button
    Click Element   ${Add_Group_Button}
    Sleep    2
Insert Random Group Name
    ${Dynamic_Group_Name}           Generate Random String      10       [LETTERS]
    Input Text              ${Group_Name}    ${Dynamic_Group_Name}
    Set Selenium Implicit Wait  5
    [Return]    ${Dynamic_Group_Name}
Click on Save
    Click Button    ${Save_Button}
Click on Yes at the Confirmation Message
    Click Element   ${Yes_Button}
System should Displays the Group Name Successfully
    [Arguments]     ${Dynamic_Group_Name}
    Sleep    3
    Page Should Contain    ${Dynamic_Group_Name}