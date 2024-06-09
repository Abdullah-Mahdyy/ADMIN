 robot  -d   Results   -i   Delete_Role   Tests
###################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_DeleteRole.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Test Cases ***
Check Functionality of Delete Role
    [tags]                      Delete_Role
    Click on Assignments Button
    Click On Requester Button
    Click on Specific Group
    Click on Specific Role
    Click on Delete Button
    Click on Yes at the Confirmation Message
    Page Should Contain     Role deleted sucessfully
