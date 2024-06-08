 robot  -d   Results   -i   Add_User   Tests
###################### Command #############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_AddUser.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Test Cases ***
Check Functionality of Add_User
    [tags]                      Add_User
    Click on Assignments Button
    Click On Requester Button
    Click on Specific Group
    Click on Specific Role
    Click on Edit Button
    Click on User Button
    Re-Click on User Button
    Click on Search Text Box
    Select Specifc Role
    Click on User Button again
    Click on Add User Button
    Click on Save
    Click on Yes at the Confirmation Message
    Page Should Contain     Role data saved successfully