 robot  -d   Results   -i   Add_Role_on_EditUser   Tests
###################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_AddRole.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Test Cases ***
Check Functionality of Add_Role
    [tags]                      Add_Role_on_EditUser
    Click on Assignments Button
    Click On Requester Button
    Click on Specific Group
    Click on Add Role Button
    ${RN}     Insert Random Role Name
    Click on Save
    Click on Yes at the Confirmation Message
    System should Displays the Group Name Successfully  ${RN}
